class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end
  
  def index
  end

  def create
    @item = Item.create(item_params)
   if @item.save
    redirect_to root_path
   else
    render :index
   end

  end
  
  def show
  end

  def edit
  end

  private
  def item_params
    #params.require(:item).permit(:item).merge(user_id: current_user.id)
    params.require(:item).permit(:image,:money,:name,:explanation,:category_id,:status_id,:deliveryfee_id,:shoppingregion_id,:deliverytime_id).merge(user_id: current_user.id)
  end

end
