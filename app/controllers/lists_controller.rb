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

  #POST /lists/new
  def create
    @list = List.new(strong_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end
  private

  def strong_params
    params.require(:list).permit(:name)
  end
end
