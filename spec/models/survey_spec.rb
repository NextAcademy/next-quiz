require "rails_helper"

RSpec.describe Survey, :type => :model do
  it "can create a Survey in the database" do
    survey = Survey.create(title:"What is your super power?", description: "Find out your super powers!")
    expect(Survey.last).to eq(survey)
  end
end