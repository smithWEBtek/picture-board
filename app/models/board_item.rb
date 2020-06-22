# frozen_string_literal: true

class BoardItem < ApplicationRecord
  belongs_to :board
  belongs_to :item
end
