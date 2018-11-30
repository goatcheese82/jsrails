class Question < ApplicationRecord
    has_many :answers through: :session
end
