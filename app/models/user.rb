class User < ApplicationRecord
  include Clearance::User
  enum role: [:user, :moderator, :superadmin, :banned]
end
