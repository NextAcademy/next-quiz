class SurveysController < ApplicationController

  before_action :is_signed_in?

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
      @survey = Survey.new
      authorize @survey
      @survey.questions.build.answers.build
  end

  def create
    @survey = Survey.new(survey_params)
    authorize @survey
    @survey.user_id = current_user.id

    if @survey.save
        redirect_to @survey
    else
        render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
    authorize @survey

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
