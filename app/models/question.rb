class Question < ApplicationRecord
  belongs_to :topic

  has_many :answer_variants, dependent: :destroy
  has_many :user_answer_variants, dependent: :destroy
  validates :title, presence: true
end
