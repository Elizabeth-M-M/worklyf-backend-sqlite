class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :summary
  has_one :profile

  def summary
    # "#{profile.full_name}"
    # self.oject.Profile
    # "#{self.object.tasks.filter{|task|=> task.group_id!==1}}"
    [self.object.tasks.select{|task| task.group_id!=1}]
    {
      "personal":"#{self.object.tasks.select{|task| task.group_id!=1}.count}",
      "work":"#{self.object.tasks.select{|task| task.group_id==1}.count}",
      "complete":"#{self.object.tasks.select{|task| task.status==true}.count}",
      "pending":"#{self.object.tasks.select{|task| task.status!=true}.count}"
    }
  end
end
