class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :name, :age, :sign, :bio, :gender, :preference, :location, :instagram

  has_many :messages
end
