class Api::V1::SubmissionsController < ApplicationController
    def index
        @submissions = current_user.submissions
        render json: @submissions
    end
end
