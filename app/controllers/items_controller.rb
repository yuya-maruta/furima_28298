class ItemsController < ApplicationController
  
  def new
  end
  
  def index
  end

  def create
    Item.create(item_params)
    redirect_to "/items/#{item.tweet.id}"
  end
  
  def show
  end

  def edit
  end

  private
  def item_params
    params.require(:item).permit(:image,:money,:name,:explanation,:category,:status,:deliveryfee,:shoppingregion,:deliverytime).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end
