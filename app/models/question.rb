class Question < ApplicationRecord
    has_many :users, through: :user_questions

    def self.random
        self.all.sample
    end
end
