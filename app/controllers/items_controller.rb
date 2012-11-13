class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.new(params[:item])
    logger.info { p @item }
    logger.info { p '-------------------------------------------------'}
    if @item.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

end