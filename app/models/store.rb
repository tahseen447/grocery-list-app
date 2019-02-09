class Store < ApplicationRecord
  has_many :store_items
  has_many :items, through: :store_items


  def self.items_high_to_low
  #  StoreItems.all.order(price: :desc).where(store_id: '#{self.id}')
  end

  def self.items_low_to_high
    #store_items.order(price: :asc)
  end

  #def self.store_items
  #  binding.pry
  #  store_items
  #end
end
