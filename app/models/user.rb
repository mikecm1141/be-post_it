class User < ApplicationRecord
  has_secure_password

  validates :username, :email, :first_name, :last_name, presence: true
  validates :username, :email, uniqueness: true
end
