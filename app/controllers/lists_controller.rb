class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
     @list = List.find(params[:id])
     @items = @list.items
     @item = @list.items.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end


end