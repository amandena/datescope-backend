class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      render json: @user
    else
      render json: {error: 'Are you sure that was right? Please try logging in again.'}
    end
  end

  def destroy
  end
end