class Api::V1::QuestionsController < ApplicationController
    before_action :authenticate_user!

    def index
        @quiz = Quiz.find(params[:quiz_id])
        render json: @quiz.questions
    end

    def create
        @quiz = Quiz.find(params[:quiz_id])
        @question = @quiz.questions.build(question_params)
        if @question.save
            render json: @question, status: :created
        else
            render json: { errors: @question.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def question_params
        params.require(:question).permit(:content)
    end
end
