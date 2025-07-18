# frozen_string_literal: true

class Api::V1::Users::SessionsController < Devise::SessionsController
  def create
    super do |resource|
      token = request.env["warden-jwt_auth.token"]
      render json: { message: "Logged in successfully.", user: resource, token: token }, status: :ok and return
    end
  end

  def destroy
    super
    render json: { message: "Logged out successfully."}, status: :ok
  end
end
