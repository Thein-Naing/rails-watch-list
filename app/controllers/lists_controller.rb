class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    list = List.create!(params_list)
    redirect_to list_path(list.id)
  end

  private

  def params_list
    params.require(:list).permit(:name, :review)
  end
end
