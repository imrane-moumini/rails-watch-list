class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  # GET  /lists/:id
  def show
    @list = List.find(params[:id])
  end
end
