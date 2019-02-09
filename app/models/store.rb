class Store < ApplicationRecord
  has_many :store_items
  has_many :items, through: :store_items


  def self.items_high_to_low
    store_items.order(price: :desc)
  end

  def self.items_low_to_high
    store_items.order(price: :asc)
  end

  def self.store_items
    binding.pry
    store_items
  end
end
