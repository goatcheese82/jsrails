class UserQuestion < ApplicationRecord
    belongs_to :question
    belongs_to :user
    belongs_to :game_session
end
