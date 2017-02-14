require 'rails_helper'

RSpec.describe SurveysController, :type => :controller do

  before(:each) {
    sign_in_as(build(:user))
  }

  context "GET new" do
    it "redirects to root_path if not logged in" do
      sign_out
      get :new
      expect(response).to redirect_to(root_path)
      expect(flash[:alert]).to be_present
    end

    it "displays a template survey creation" do
      get :new
      expect(assigns(:survey)).to be_a_new(Survey)
      expect(assigns(:survey).questions.first).to be_a_new(Question)
      expect(response).to have_http_status(:success)
    end
  end
end