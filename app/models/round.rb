class Round < ApplicationRecord
    belongs_to :game_session
    has_one :question
    has_many :users through: :game_session
end
