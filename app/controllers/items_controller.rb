class ItemsController < ApplicationController
  #before_action :set_item, only: [:edit, :show]

  def new
    @item = Item.new
  end
  
  def index
   
   @items = Item.all.order("created_at DESC")
  

   
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
    @item = Item.find(params[:id])
  end

  def edit
  end


  #def set_item
   # @item = Item.find(params[:id])
  #end

  private
  def item_params
    #params.require(:item).permit(:item).merge(user_id: current_user.id)
    params.require(:item).permit(:image,:money,:name,:explanation,:category_id,:status_id,:deliveryfee_id,:shoppingregion_id,:deliverytime_id).merge(user_id: current_user.id)
  end

end
