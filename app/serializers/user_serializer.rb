class UserSerializer < ActiveModel::Serializer
  has_many :items
  attributes :username, :display_name, :email
end
