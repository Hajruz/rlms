module Learners
  class UserAnswerVariantsController < BaseController
    expose :topic
    expose :question
    expose :answer_variant
    expose :user_answer_variant

    def create
      user_answer_variant.learner = current_learner
      user_answer_variant.topic_id = topic.id
      user_answer_variant.save
      redirect_back
    end

    def destroy
      user_answer_variant.destroy
    end

    private

    def user_answer_variant_params
      params.require(:user_answer_variant).permit(:question_id, :answer_variant_id)
    end
  end
end