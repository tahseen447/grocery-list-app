class StoreItemsSerializer < ActiveModel::Serializer
  attributes :id, :store_id, :item_id
end
