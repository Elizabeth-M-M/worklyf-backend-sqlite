class User < ApplicationRecord
  has_secure_password
  has_many :tasks
  has_one :profile
  has_many :categories, through: :tasks
  has_many :groups, through: :tasks
  validates :email, uniqueness: true
  validates :password, length: {minimum:5, maximum:9}
end
