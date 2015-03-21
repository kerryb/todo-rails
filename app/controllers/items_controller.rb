class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    redirect_to action: :index
  end
end
