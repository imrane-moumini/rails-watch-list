class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  # GET  /lists/:id
  def show
    @list = List.find(params[:id])
  end
#GET  /lists/new
  def new
    @list = List.new()
  end

  #GET  /lists/new
  def create
    @list = List.create(strong_params)
    redirect_to @list
  end
  private

  def strong_params
    params.require(:list).permit(:name)
  end
end
