class Question < ApplicationRecord
    has_many :answers, through: :users
end
