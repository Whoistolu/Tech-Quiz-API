class Api::V1::SubmissionsController < ApplicationController
    def index
        @submissions = current_user.submissions
        render json: @submissions
    end

    def create
        @quiz = Quiz.find(params[:quiz_id])
        @submission = current_user.submissions.build(quiz: @quiz)

        score = 0
        params[:answers].each do |question_id, option_id|
            question = Question.find(question_id)
            option = Option.find(option_id)
            if option.correct
            score += 1
            end

            @submission.user_answers.build(question: question, option: option)
        end

        @submission.score = score

        if @submission.save
            render json: { message: "Quiz submitted successfully.", score: score }, status: :created
        else
            render json: { errors: @submission.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
