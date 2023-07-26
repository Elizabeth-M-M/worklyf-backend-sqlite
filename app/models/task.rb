class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :group

  validates :title, :start_date, :end_date, presence: true
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_in_the_past

  def end_date_cannot_be_in_the_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

end
