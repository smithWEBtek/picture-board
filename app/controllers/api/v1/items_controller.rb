# frozen_string_literal: true

class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all.order(created_at: :desc)
    render json: items
  end

  def create
    item = Item.create!(item_params)
    if item
      render json: item
    else
      render json: item.errors
    end
  end

  def show
    if item
      render json: item
    else
      render json: item.errors
    end
  end

  def destroy
    item&.destroy
    render json: { message: 'Item deleted!' }
  end

  private

  def item_params
    params.permit(:name, :image, :description)
  end

  def item
    @item ||= Item.find(params[:id])
  end
end
