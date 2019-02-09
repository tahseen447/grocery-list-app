class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  def index
    if !params[:store_id].blank?
      store_items = Store.find(params[:store_id]).store_items
      @items = store_items.map {|item| item.item}
    elsif !params[:sort_by_department].blank?
      @items = Item.sort_by_department(params[:sort_by_department])
    else
      @items = Item.all
    end
  end

  def show
  end


  private
  def set_item
    @item = Item.find(params[:id])
  end
end
