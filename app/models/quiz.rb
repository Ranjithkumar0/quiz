class Quiz < ApplicationRecord
    belongs_to :user, optional: true
    has_many :questions, dependent: :destroy
    validates :title, presence: true
end
