class PurchasesController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
  end

def create
  
end

def update
end

private

 def purchases_params

  params.require(:user).permit(:name, :postalcode,:prefectures,:city,:house_number,:building_name,:phone_number)

 end

end
