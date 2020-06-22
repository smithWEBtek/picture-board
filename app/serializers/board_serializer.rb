class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :items
end
