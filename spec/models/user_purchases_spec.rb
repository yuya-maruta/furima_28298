require 'rails_helper'

RSpec.describe UserPurchases do
  describe do
    before do
      @user_purchases = FactoryBot.build(:user_purchases)
    end
   
    describe '購入の保存がうまくいくとき' do
      it "電話番号が11桁以内であれば登録できる" do
        expect(@user_purchases).to be_valid
      end
     
      it "郵便番号にはハイフンがあれば登録できる" do
        expect(@user_purchases).to be_valid
      end
    end

   context '購入保存がうまくいかないとき' do

    it 'postalcodeが空だと保存できないこと' do
      @user_purchases.postalcode = ''
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("Postalcode can't be blank", "Postalcode is invalid. Include hyphen(-)")
    end

    it 'cityが空だと保存できないこと' do
      @user_purchases.city = ''
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("City can't be blank")
    end

    it 'house_numberが空だと保存できない' do
      @user_purchases.house_number = ''
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("House number can't be blank")
    end


      it 'phone_numberが空だと保存できない' do
        @user_purchases.phone_number = ''
        @user_purchases.valid?
        expect(@user_purchases.errors.full_messages).to include("Phone number can't be blank", "Phone number It is invalid. Do not include hyphen (-)")
    
      end    

      it 'prefectureが空だと保存できない' do
        @user_purchases.prefecture = ''
        @user_purchases.valid?
        expect(@user_purchases.errors.full_messages).to include("Prefecture can't be blank")
      end
   end

  end
end
