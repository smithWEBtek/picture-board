class BoardItemSerializer < ActiveModel::Serializer
  attributes :id, :board, :item
end
