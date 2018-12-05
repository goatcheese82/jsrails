class Question < ApplicationRecord
    has_many :users, through: :user_questions
    has_many :rounds

    def self.random
        self.all.sample
    end
end
