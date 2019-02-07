class Store < ApplicationRecord
  has_many :items, through: :store_items
end
