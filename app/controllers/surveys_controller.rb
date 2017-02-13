class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
    @survey.questions.build.answers.build
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
        redirect_to @survey
    else
        render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])
    if @survey.update_attributes(survey_params)
      redirect_to @survey
    end
  end

  private
  def survey_params
    params.require(:survey).permit(
      :title,
      :description,
      questions_attributes: [
        :id,
        :survey_id,
        :description,
        :_destroy,
        answers_attributes: 
          [ :id, 
            :description, 
            :_destroy, 
            :question_id
          ]
        ]
      )
  end

end
