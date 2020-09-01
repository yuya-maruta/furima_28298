class PurchasesController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
  end


def create
  @user_purchases = UserPurchases.new(purchases_params)
   if @user_purchases.valid?
    pay_item
    @user_purchases.save
    return redirect_to root_path
  else
    render 'index'
  end
 
end


private

 def purchases_params
  params.permit(:name, :postalcode, :prefecture, :city, :house_number, :building_name, :phone_number,:token, :item_id).merge(user_id: current_user.id )
 end





def pay_item
  @item = Item.find(params[:item_id])
  Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
  Payjp::Charge.create(
    amount: @item.money, 
    card: purchases_params[:token],    
    currency:'jpy'                
  )
end

end
