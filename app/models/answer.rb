class Answer < ApplicationRecord
    belongs_to :question, optional: true

    validates_presence_of :description
    validates_presence_of :question_id
    validates_presence_of :key_value_pairs
end
