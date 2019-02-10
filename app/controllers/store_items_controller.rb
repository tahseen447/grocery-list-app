class StoreItemsController < ApplicationController

  def create
    binding.pry
    @store_item = StoreItem.create(store_item_params)
  end

def private
  def store_item_params
    params.require(:store_item).permit(:store_id, :item_id, :price)
  end
end
