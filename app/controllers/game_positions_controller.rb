class GamePositionsController < ApplicationController
  before_action :set_game_position, only: [:show, :update, :destroy]

  # GET /game_positions
  def index
    @game_positions = GamePosition.all

    render json: @game_positions
  end

  # GET /game_positions/1
  def show
    render json: @game_position
  end

  # POST /game_positions
  def create
    @game_position = GamePosition.new(game_position_params)

    if @game_position.save
      render json: @game_position, status: :created, location: @game_position
    else
      render json: @game_position.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_positions/1
  def update
    if @game_position.update(game_position_params)
      render json: @game_position
    else
      render json: @game_position.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_positions/1
  def destroy
    @game_position.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_position
      @game_position = GamePosition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_position_params
      params.require(:game_position).permit(:game_id, :fen, :move_count)
    end
end
