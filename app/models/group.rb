class Group < ApplicationRecord
  has_many :tasks
  has_many :categories, through: :tasks
end
