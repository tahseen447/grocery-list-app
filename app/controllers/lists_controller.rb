class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    binding.pry
    redirect_to list_path(@list)
  end

  def show
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, item_ids:[])
  end

  def set_list
    @list = List.find(params[:id])
  end
end
