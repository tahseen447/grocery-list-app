class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  def index
    if !params[:store_id].blank?
      store_items = Store.find(params[:store_id]).store_items
      @items = store_items.map {|item| item.item}
    elsif !params[:sort_by_department].blank?
      @items = Item.sort_by_department(params[:sort_by_department])
      @department = params[:sort_by_department]
    else
      @items = Item.all
    end
  end

  def show
  end

  def new
    if !params[:store_id].blank?
      @store = Store.find(params[:store_id])
      @item = Item.new
      @store_item = @item.store_items.build
      @store_item.store = @store
    else
      @item = Item.new
    end
  end

  def create
    if !params[:store_id].blank?
      @store = Store.find(params[:store_id])
      @item = @store.store_items.build(item_params)
    else
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      redirect_to new_item_path
    end
  end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :department, :store_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
