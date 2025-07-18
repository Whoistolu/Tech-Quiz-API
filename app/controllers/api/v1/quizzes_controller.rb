class Api::V1::QuizzesController < ApplicationController
    def index
        @quizzes = Quiz.all
        render json: @quizzes
    end

    def show
        @quiz = Quiz.find(params[:id])
        render json: @quiz, include :questions
    end

    def create
        @quiz = Quiz.new(quiz_params)
        if @quiz.save
            render json: @quiz, status: :created
        else
            render json: { errors: @quiz.errors.full_messages }, status: :unprocessable_entity
        end
    end


    def quiz_params
        params.require(:quiz).permit(:title, :description)
    end
end
