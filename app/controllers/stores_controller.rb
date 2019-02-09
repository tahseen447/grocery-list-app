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
    elsif !params[:list_id].blank?
      @store = Store.find(params[:store][:id])
      list = List.find(params[:list_id])
      list_items = list.items.all.map {|item| item.name}
      store_items = @store.store_items.all
      @store_items =store_items.map {|items| items if list_items.include?(items.item.name)}.compact
      else
        @store_items = @store.store_items
    end
  end

  private
  def set_store
    @store = Store.find(params[:id])
  end
end
