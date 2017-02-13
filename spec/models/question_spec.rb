require "rails_helper"

RSpec.describe Question, :type => :model do
  it "has a valid factory" do
    expect(build(:question)).to be_valid
  end

  it "can create a Question in the database" do
    expect{ create(:question) }.to change{Question.count}.by(1)
  end

  context "validations" do
    it "should have title" do
      should have_db_column(:survey_id).of_type(:integer)
      should have_db_column(:description).of_type(:string)
    end
    
    describe "validates presence of attributes" do
      it { is_expected.to validate_presence_of(:description) }
    end

    describe "validates presence of association" do
      it { is_expected.to have_many(:answers) }
      it { is_expected.to belong_to(:survey) }
    end
  end

end