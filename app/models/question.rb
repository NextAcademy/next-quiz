class Question < ApplicationRecord
    belongs_to :survey, optional: true
    has_many :answers, dependent: :destroy
    accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

    validates_presence_of :description, null: false
end
