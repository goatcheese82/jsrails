class Round < ApplicationRecord
    belongs_to :game_session
    belongs_to :question
    has_many :user_questions

    def find_round_number
        self.game_session.rounds.find_index(self) + 1
    end

    def answers
        self.user_questions
    end

end
