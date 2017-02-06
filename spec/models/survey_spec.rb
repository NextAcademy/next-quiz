require "rails_helper"

RSpec.describe Survey, :type => :model do
  it "has a valid factory" do
    expect(build(:survey)).to be_valid
  end

  let(:survey_instance) {build(:survey)}

  it "can create a Survey in the database" do
    survey = survey_instance
    survey.save
    expect(Survey.last).to eq(survey)
  end

end