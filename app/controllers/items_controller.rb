class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update,:destroy]
  before_action :move_to_index, except: [:show,:index]

  
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
    render 'new'
   end
  end
  
  def show
  end

  def edit
 end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end

  def destroy
    if @item.user_id == current_user.id
       @item.destroy 
       redirect_to root_path
     end
  end


  private
  def item_params
    params.require(:item).permit(:image,:money,:name,:explanation,:category_id,:status_id,:deliveryfee_id,:shoppingregion_id,:deliverytime_id).merge(user_id: current_user.id)
  end

def set_item
  @item = Item.find(params[:id])
end

def move_to_index
  unless user_signed_in?
    redirect_to action: :index
  end
end

end
