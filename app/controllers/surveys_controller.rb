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
    @survey = Survey.new
  end


  def edit
    @survey = Survey.find(params[:id])
  end


  private
  def survey_params

  end

end
