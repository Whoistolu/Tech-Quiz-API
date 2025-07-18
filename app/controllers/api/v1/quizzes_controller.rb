class Api::V1::QuizzesController < ApplicationController
    def index
        @quizzes = Quiz.all
        render json: @quizzes
    end

    def show
        @quiz = Quiz.find(params[:id])
        render json: @quiz, include :questions
    end
end
