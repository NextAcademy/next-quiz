require 'rails_helper'

RSpec.describe SurveysController, :type => :controller do
  context "GET new" do
    it "displays a template survey creation" do
      survey = Survey.new
      get :new
      expect(assigns(:survey)).to be_a_new(Survey)
      expect(assigns(:survey).questions.first).to be_a_new(Question)
      expect(response).to have_http_status(:success)
    end
  end

end