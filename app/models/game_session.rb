class GameSession < ApplicationRecord
    has_many :users
    has_many :rounds
    accepts_nested_attributes_for :users
end
