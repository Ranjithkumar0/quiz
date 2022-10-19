class Option < ApplicationRecord
    belongs_to :question
    validates :option1, presence: true
end