require "rails_helper"

RSpec.describe Answer, :type => :model do
  it "has a valid factory" do
    expect(build(:answer)).to be_valid
  end

  it "can create a Answer in the database" do
    expect{ create(:answer) }.to change{Answer.count}.by(1)
  end

  context "validations" do
    it "should have title" do
      should have_db_column(:question_id).of_type(:integer)
      should have_db_column(:description).of_type(:string)
      should have_db_column(:key_value_pairs).of_type(:json)
    end
    
    describe "validates presence of attributes" do
      it { is_expected.to validate_presence_of(:description) }
      it { is_expected.to validate_presence_of(:question_id) }
      # it { is_expected.to validate_presence_of(:key_value_pairs) }
    end

    describe "validates presence of association" do
      it { is_expected.to belong_to(:question) }
    end
  end

end