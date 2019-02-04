class ItemSerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :description
end
