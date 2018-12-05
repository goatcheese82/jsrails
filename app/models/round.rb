class Round < ApplicationRecord
    belongs_to :game_session
    has_one :question
    has_many :user_questions
end
