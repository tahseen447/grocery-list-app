class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :department
  #has_many :store_items, serializer: StoreItemsSerializer
end
