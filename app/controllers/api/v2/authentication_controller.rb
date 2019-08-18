class Api::V2::AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      user = User.find_by_email(params[:email])
      render json: { message: 'login successful', user_id: user.id,  auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end

  end
end
