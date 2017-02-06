require "rails_helper"

RSpec.describe Survey, :type => :model do
  it "creates a survey" do
    survey = Survey.new(title:"What is your super power?", description: "Find out your super powers!")
    expect(Survey.last).to eq(survey)
  end
end