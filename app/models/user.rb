class User < ApplicationRecord
    belongs_to :game_session
    has_many :answers, through: :questions

end
