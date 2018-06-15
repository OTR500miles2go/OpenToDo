class ItemSerializer < ActiveModel::Serializer
  # attributes to be serialized
  attributes :id, :name, :done, :list_id, :created_at, :updated_at

  # model associations
  belongs_to :list
end