class Api::V1::OptionsController < ApplicationController
    def index
        @question = Question.find(params[:question_id])
        render json: @question.options
    end
end
