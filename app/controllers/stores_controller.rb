class StoresController < ApplicationController
  before_action :set_store, only: [:show]

  def index
    @stores = Store.all
  end

  def show
    if !params[:sort_order].blank?
      if params[:sort_order] == "High to Low"
        @store_items  = Store.items_high_to_low
      elsif params[:sort_order] == "Low to High"
        @store_items = Store.items_low_to_high
      end
    #else
    #  @store_items = Store.store_items
    end
  end

  private
  def set_store
    @store = Store.find(params[:id])
  end
end
