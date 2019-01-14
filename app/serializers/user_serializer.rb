class UserSerializer < ActiveModel::Serializer
  attributes :username, :display_name, :email
end
