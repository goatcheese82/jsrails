class GameSession < ApplicationRecord
    has_many :users
    has_many :user_questions
    accepts_nested_attributes_for :users
end
