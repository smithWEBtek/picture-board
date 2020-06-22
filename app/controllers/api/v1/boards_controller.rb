# frozen_string_literal: true
class Api::V1::BoardsController < ApplicationController

  def index
    boards = Board.all.order(created_at: :desc)
    render json: boards
  end
 
  def create
    board = Board.create!(board_params)
    if board
      render json: board
    else
      render json: board.errors
    end
  end

  def show
    if board
      render json: board
    else
      render json: board.errors
    end
  end

  def destroy
    board&.destroy
    render json: { message: 'Board deleted!' }
  end

  private

  def board_params
    params.permit(:name, :image, :description)
  end

  def board
    @board ||= Board.find(params[:id])
  end
end
