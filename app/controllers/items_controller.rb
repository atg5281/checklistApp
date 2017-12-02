class ItemsController < ApplicationController
  def getItems
    items = Item.all
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: items}, status: :ok
  end

  def deleteItem
    Item.find(params[:id]).destroy
  end

  def checkItem
    @check_item = Item.find(params[:id])
    @check_item.is_checked = !@check_item.is_checked
    @check_item.save

    render json: {status: 'SUCCESS', message: 'item checked'}
  end

  def postItem
    @new_item = Item.new
    @new_item.name = params[:name]
    @new_item.is_checked = false
    @new_item.save
  end
end
