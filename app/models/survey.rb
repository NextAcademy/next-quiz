class Survey < ApplicationRecord
    belongs_to :user, optional: true
    has_many :questions, dependent: :destroy
    accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

    validates_presence_of :title
    validates_presence_of :description
    validates :title, length: { minimum: 20, maximum: 144 }
end
