class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update]

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to list_path(@list)
  end

  def show
  end

  def edit
  end

  def update
    if @list.update
      redirect_to list_path(@list)
    else
      redirect_to edit_list_path(@list)
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, item_ids:[])
  end

  def set_list
    @list = List.find(params[:id])
  end
end
