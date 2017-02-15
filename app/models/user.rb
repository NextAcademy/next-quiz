class User < ApplicationRecord
  include Clearance::User
  has_many :surveys, dependent: :destroy
  enum role: [:user, :moderator, :superadmin, :banned]
end
