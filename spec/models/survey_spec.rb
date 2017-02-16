require "rails_helper"

RSpec.describe Survey, :type => :model do
  it "has a valid factory" do
    expect(build(:survey)).to be_valid
  end

  it "can create a Survey in the database" do
    expect{ create(:survey) }.to change{Survey.count}.by(1)
  end

  context "validations" do
    it "should have title" do
      should have_db_column(:title).of_type(:string)
      should have_db_column(:description).of_type(:string)
    end
    
    describe "validates presence of attributes" do
      it { is_expected.to validate_presence_of(:title) }
    end

    describe "validates length of title" do
      it { is_expected.to validate_length_of(:title).is_at_least(20).is_at_most(144) }
    end

    describe "validates presence of association" do
      it { is_expected.to have_many(:questions) }
      it { is_expected.to have_many(:outcomes) }
      it { is_expected.to belong_to(:user) }
    end
  end

end