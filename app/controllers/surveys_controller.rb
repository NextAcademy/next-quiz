class SurveysController < ApplicationController
  def index
    @survey = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
    @survey.questions.build
    
    # 4.times do 
    #   @survey.questions.build
    #   @survey.questions.each do |question|
    #     question.answers.build
    #   end
    # end

  end

  def create
    @survey = Survey.new(survey_params)
    @survey.questions.build

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
        :description, 
        :_destroy,
        answers_attributes: [:id, :description, :_destroy, :question_id]
        ]
      )
  end

end
