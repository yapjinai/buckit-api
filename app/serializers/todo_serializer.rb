class TodoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_id
  has_one :user
  has_one :item
end
