class ListsController < ApplicationController
  def new
    binding.pry
    @list = List.new
  end

  def create
    binding.pry
  end
end
