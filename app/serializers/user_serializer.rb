class UserSerializer < ActiveModel::Serializer
  has_many :items
  has_many :todos
  attributes :username, :display_name, :email
end
