class Outcome < ApplicationRecord
    belongs_to :survey, optional: true

    validates_presence_of :title
    validates_presence_of :description
end
