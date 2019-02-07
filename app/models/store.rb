class Store < ApplicationRecord
  has_many :lists
  has_many :items, through: :store_items
end
