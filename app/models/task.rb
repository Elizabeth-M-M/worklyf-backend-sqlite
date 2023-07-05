class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :group
  validates :title, :start_date, :end_date, presence: true
end
