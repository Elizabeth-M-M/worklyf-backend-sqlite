class TaskSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :group_id, :user_id, :title, :start_date, :end_date, :status, :label, :reminder, :description, :start_time, :end_time
  belongs_to :category
  belongs_to :group

end
