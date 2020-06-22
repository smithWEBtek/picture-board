class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image
  has_many :board_items
  has_many :boards, through: :items
end
