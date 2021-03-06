class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      render json: @user
    else
      render json: {error: 'Are you sure that was right? Please try logging in again.'}
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {error: 'Not logged in.'}
    end
  end

  def destroy
    session.clear
    render json: {notice: 'Come back soon!'},
      status: :ok
  end
end
