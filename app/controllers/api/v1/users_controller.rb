class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:index, :show, :update, :destroy]

  def index
    @users = @user.compatibility
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: {error: 'Error creating user. Please try again.'}
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {error: 'Error updating info. Please try again.'}
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :age, :sign, :bio, :gender, :preference, :location, :instagram)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
