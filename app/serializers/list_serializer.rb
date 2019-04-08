class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :list_items, serializer: ListItemsSerializer
  has_many :items, serializer: ItemSerializer
end
