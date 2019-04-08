class ListsController < ApplicationController
  before_action :require_logged_in
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = current_user.lists
  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render new_list_path
    end
  end

  def show
    
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      redirect_to edit_list_path(@list)
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, item_ids:[], list_items_attributes:[:quantity, :id])
  end

  def set_list
    @list = List.find(params[:id])
    @list.user_id === current_user.id
  end

  def require_logged_in
     return head(:forbidden) unless logged_in?
  end
end
