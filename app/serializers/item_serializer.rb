class ItemSerializer < ActiveModel::Serializer
  has_many :users
  attributes :description
end
