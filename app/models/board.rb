# frozen_string_literal: true

class Board < ApplicationRecord
  has_many :board_items
  has_many :items, through: :board_items
end
