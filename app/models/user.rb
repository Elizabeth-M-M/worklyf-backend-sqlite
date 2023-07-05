class User < ApplicationRecord
  has_secure_password
  has_many :tasks
  has_one :profile
  validates :email, uniqueness: true
  validates :password, length: {minimum:5, maximum:9}
end
