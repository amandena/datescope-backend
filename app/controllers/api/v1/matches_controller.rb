class Api::V1::MatchesController < ApplicationController
  before_action :find_match, only: [:index, :show, :destroy]
  before_action :find_user

  def index
    @matches = @user.matches
    render json: @matches
  end

  def show
    render json: @match
  end

  def create
    @match = @user.matches.new(match_params)
    if @match.save
      render json: @match
    else
      render json: {error: "That didn't work out as planned. Please try again."}
    end
  end

  def destroy
    @match.destroy
  end

  private

  def match_params
    params.require(:match).permit(:user_id, :match_id)
  end

  def find_match
    @match = Match.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
