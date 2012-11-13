class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.new(params[:item])
    if @item.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(@item.list.id)
  end

end