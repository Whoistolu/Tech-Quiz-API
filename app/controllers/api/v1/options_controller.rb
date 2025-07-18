class Api::V1::OptionsController < ApplicationController
    def index
        @question = Question.find(params[:question_id])
        render json: @question.options
    end

    def create
        @question = Question.find(params[:question_id])
        @option = @question.options.build(option_params)
        if @option.save
            render json: @option, status: :created
        else
            render json: { errors: @option.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def option_params
        params.require(:option).permit(:content, :correct)
    end
end
