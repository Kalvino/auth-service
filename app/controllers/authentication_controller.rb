class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])

    if @user&.authenticate(params[:password])
      @token = jwt_encode(user_id: @user.id)
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  def verify
    decoded = jwt_decode(params[:token])

    if decoded
      @user = User.find(decoded[:user_id])
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
end
