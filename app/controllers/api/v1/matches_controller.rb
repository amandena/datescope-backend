class Api::V1::MatchesController < ApplicationController
  before_action :find_match, only: [:index, :show, :destroy]

  def index
    @matches = @Match.all
    render json: @matches
  end

  def show
    render json: @match
  end

  def create
    @match = Message.new(match_params)
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
end
