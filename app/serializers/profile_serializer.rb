class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :gender, :age, :occupation, :full_name, :user_id
end
