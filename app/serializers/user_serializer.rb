class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :summary, :pending, :completed
  has_one :profile

  def summary
    [self.object.tasks.select{|task| task.group_id!=1}]
    {
      "personal":"#{self.object.tasks.select{|task| task.group_id!=1}.count}",
      "work":"#{self.object.tasks.select{|task| task.group_id==1}.count}",
      "complete":"#{self.object.tasks.select{|task| task.status==true}.count}",
      "pending":"#{self.object.tasks.select{|task| task.status!=true}.count}"
    }
  end
  def pending
    [self.object.tasks.select{|task| task.status!=true}.sort_by { |t| t[:start_date] }]
  end
  def completed
    [self.object.tasks.select{|task| task.status==true}.sort_by { |t| t[:start_date] }]
  end
end
