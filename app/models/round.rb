class Round < ApplicationRecord
    belongs_to :game_session
    has_one :round_question
    belongs_to :question
    has_many :user_questions
end
