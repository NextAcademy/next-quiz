class SurveysController < ApplicationController
  def index
    @survey = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
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


  private
  def survey_params
    params.require(:survey).permit(:title, :description)
  end

end
