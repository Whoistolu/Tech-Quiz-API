class Api::V1::QuestionsController < ApplicationController
    def index
        @quiz = Quiz.find(params[:quiz_id])
        render json: @quiz.questions
    end
end
