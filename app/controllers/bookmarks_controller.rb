class BookmarksController < ApplicationController

   #GET    /lists/:list_id/bookmarks/new
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new()
  end

#POST   /lists/:list_id/bookmarks
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(strong_params)
    @bookmark.list = @list
    if @bookmark.save
    redirect_to @list
    else
      render :new
    end
  end

#DELETE /bookmarks/:id
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  def strong_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
