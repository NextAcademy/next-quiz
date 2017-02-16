require 'rails_helper'

RSpec.describe OutcomesController, type: :controller do

  describe "GET #cd" do
    it "returns http success" do
      get :cd
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #.." do
    it "returns http success" do
      get :..
      expect(response).to have_http_status(:success)
    end
  end

end
