module Learners
  class QuestionsController < BaseController
    respond_to :html

    expose :topic
    expose :user_answer_variants

    def index
      question_ids = current_learner.user_answer_variants.where(topic_id: topic.id).select("questions.id")
      @question = topic.questions.where.not(id: question_ids).first
    end

  end
end