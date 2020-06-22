# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true

  has_many :board_items
  has_many :boards, through: :board_items
end
