class RoundSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :game_session
  belongs_to :question
  has_many :user_questions
end
