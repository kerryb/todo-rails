class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    Item.create params.require(:item).permit :name
    redirect_to action: :index
  end

  def mark_done
    redirect_to action: :index
  end
end
