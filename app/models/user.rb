class User < ApplicationRecord
    belongs_to :game_session
    has_many :user_questions
    has_many :questions, through: :user_questions

end
