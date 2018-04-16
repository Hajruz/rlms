class UserAnswerVariant < ApplicationRecord
  belongs_to :learner
  belongs_to :question
  belongs_to :answer_variant
end