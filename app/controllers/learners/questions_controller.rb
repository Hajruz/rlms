module Learners
  class QuestionsController < BaseController
    respond_to :html

    expose :question
    expose :topic
    def index; end
  end
end