class Store < ApplicationRecord
  has_many :store_items
  has_many :items, through: :store_items


  def items_high_to_low
    self.store_items.order(price: :desc)
  end

  def items_low_to_high
    self.store_items.order(price: :asc)
  end

  def self.store_items
    binding.pry

  end
end
