class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  def index
    if !params[:store_id].blank?
      store_items = Store.find(params[:store_id]).store_items
      @items = store_items.map {|item| item.item}.uniq
    elsif !params[:sort_by_department].blank?
      @items = Item.sort_by_department(params[:sort_by_department])
      @department = params[:sort_by_department]
    else
      @items = Item.all
    end
  end

  def show
    if !params[:store_id].blank?
      @store = Store.find(params[:store_id])
    end
  end

  def new
    if !params[:store_id].blank?
      @store = Store.find(params[:store_id])
    end
      @item = Item.new
  end

  def create
    if !params[:item][:store_items_attributes].blank?
      @item = Item.new(item_params)
      @store = Store.find(params[:item][:store_items_attributes]["0"][:store_id])
      if @item.save
        redirect_to store_item_path(@store, @item)
      else
        redirect_to new_store_item_path(@store)
      end
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
    params.require(:item).permit(:name, :description, :department, store_items_attributes: [:store_id, :price])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
