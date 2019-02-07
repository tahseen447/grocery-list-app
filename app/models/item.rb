class Item < ApplicationRecord
  belongs_to :list
  has_many :stores, through: :store_items
end
