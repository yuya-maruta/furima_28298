class ItemsController < ApplicationController

  
  def new
    @item = Item.new
  end
  
  
  def index
    @items = Item.all.order("created_at DESC")
  end

  
  def create
    @item = Item.new(item_params)
   if @item.valid?
    @item.save
    redirect_to root_path
   else
    render :index
   end

  end
  
  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
 end


  def update
    @item = Item.find(params[:id])
    
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end


  private
  def item_params
    params.require(:item).permit(:image,:money,:name,:explanation,:category_id,:status_id,:deliveryfee_id,:shoppingregion_id,:deliverytime_id).merge(user_id: current_user.id)
  end

end
