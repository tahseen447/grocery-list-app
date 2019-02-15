class StoreItem < ApplicationRecord
  belongs_to :store
  belongs_to :item

  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0.0 }
end
