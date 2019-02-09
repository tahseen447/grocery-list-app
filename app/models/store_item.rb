class StoreItem < ApplicationRecord
  belongs_to :store
  belongs_to :item

  accepts_nested_attributes_for :item
end
