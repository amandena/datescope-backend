class Api::V1::MessagesController < ApplicationController
  before_action :find_message, only: [:index, :show, :destroy]
  before_action :find_user

  def index
    @messages = @user.messages
    render json: @messages
  end

  def show
    render json: @message
  end

  def create
    @message = @user.messages.new(message_params)
    if @message.save
      render json: @message
    else
      render json: {error: 'Was it something you said? Please try again.'}
    end
  end

  def destroy
    @message.destroy
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :comment)
  end

  def find_message
    @message = Message.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
