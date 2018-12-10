class GameSessionSerializer < ActiveModel::Serializer
  attributes :id, :code
  has_many :rounds
  has_many :users
end
