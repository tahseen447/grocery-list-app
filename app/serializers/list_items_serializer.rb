class ListItemsSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :item_id, :list_id
  has_many :items, serializer: ItemSerializer
end
