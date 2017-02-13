class Answer < ApplicationRecord
    belongs_to :question, optional: true

    validates_presence_of :description
end
