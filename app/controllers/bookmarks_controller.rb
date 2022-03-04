class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new
    @list = List.find(set_params)
    @list = Bookmark.list_id

    @bookmark.save!
  end

  def set_params
    params.require(:list).permit(:name)
  end
end
