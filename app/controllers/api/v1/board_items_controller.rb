class Api::V1::BoardItemsController < ApplicationController

  def index
    board_items = BoardItem.all
    render json: board_items
  end
end
