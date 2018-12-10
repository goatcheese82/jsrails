class GameSession < ApplicationRecord
    has_many :users
    has_many :rounds
    has_many :user_questions, through: :rounds
    accepts_nested_attributes_for :users


    def current_round
        self.rounds.last
    end

    def answers
        self.user_questions
    end
end
