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
    end
      @item = Item.new
  end

  def create
    if !params[:store_item].blank?
      @item = Item.new(item_params)
      @item.save
      store_item=@item.store_items.create(params[:store_item])
          binding.pry
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
    params.require(:item).permit(:name, :description, :department, store_item: [])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
