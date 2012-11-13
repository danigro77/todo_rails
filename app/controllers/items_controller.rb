class ItemsController < ApplicationController
  def create
    @item = Item.new(params[:item])
    @item.list_id = params[:list_id]
    logger.info { p @item }
    logger.info { p '-------------------------------------------------'}
    if @item.save
      redirect_to list_path(@item.list.id)
    else
      render list_path(@item.list.id)
    end
  end

end