class Question < ApplicationRecord
    belongs_to :survey, optional: true
    has_many :answers, dependent: :destroy
end
