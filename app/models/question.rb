class Question < ApplicationRecord
	belongs_to :quiz
    validates :body, presence: true
    has_many :options, dependent: :destroy
end
