FactoryGirl.define do
meta_hash = { "red" => 4, "blue" => 10, "yellow" => 1, "pink" => 0 }

  factory :answer do
    question
    description         "Red"
    key_value_pairs     meta_hash
  end
  
end