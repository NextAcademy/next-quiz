class Survey < ApplicationRecord
    belongs_to :user, optional: true
    has_many :questions, dependent: :destroy
end
