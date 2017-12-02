class WelcomeController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
  end

  def create
    @item = Item.new(params[:item].permit(:name))
    @item.is_checked = false
    @item.save
    redirect_to '/'
  end
end
