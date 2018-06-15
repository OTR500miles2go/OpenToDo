class UserSerializer < ActiveModel::Serializer
  # attributes to be serialized
  attributes :id, :name, :email

  # model associations
  has_many :lists
end