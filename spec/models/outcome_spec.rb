require "rails_helper"

RSpec.describe Outcome, :type => :model do
  it "has a valid factory" do
    expect(build(:outcome)).to be_valid
  end

  it "can create an Outcome in the database" do
    expect{ create(:outcome) }.to change{Outcome.count}.by(1)
  end

  context "validations" do
    it "should have a title column" do
      should have_db_column(:title).of_type(:string)
    end

    it "should have a description column" do
      should have_db_column(:description).of_type(:string)
    end

    describe "validates presence of attributes" do
      it { is_expected.to validate_presence_of(:title) }
      it { is_expected.to validate_presence_of(:description) }
    end

    describe "validates presence of association" do
      it { is_expected.to belong_to(:survey) }
    end
  end

end