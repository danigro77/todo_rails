class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
     @list = List.find(params[:id])
     @item = Item.new(:list => @list)
  end

  def create
    @list = List.new(params[:list])
    saved = @list.save
    @lists = List.all
    if saved
      redirect_to root_path
    else
      render 'index'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path
  end


end