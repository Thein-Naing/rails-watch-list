class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    List.create!(params_list)
    redirect_to list_path([:id])
  end
end
