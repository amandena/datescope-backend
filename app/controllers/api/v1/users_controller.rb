class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:matches, :matches_show, :show, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def matches
    @users = @user.compatibility
    render json: @users
  end

  def matches_show
    render json: @user
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: @user
    else
      render json: {error: 'Well, that was weird. Did you miss something? Please try again.'}

    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {error: 'Lying about your age, again? Please try once more.'}
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
    if params[:id]
      @user = User.find(params[:id])
    end
  end
end
