require 'rails_helper'

RSpec.describe UserPurchases do
  describe '購入の保存' do
    before do
      @user_purchases = FactoryBot.build(:user_purchases)
    end

    describe '購入の保存が上手くいくとき' do
      it "nicknameとemail、passwordとpassword_confirmation、苗字名前と苗字（カナ）名前（カナ）、生年月日が存在すれば登録できる" do
        expect(@user).to be_valid

      end
     
      it "passwordが6文字以上であれば登録できる" do
        expect(@user).to be_valid
      end
    end



    it 'postal_codeが空だと保存できないこと' do
      @user_purchases.postal_code = nil
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'cityが空だと保存できないこと' do
      @user_purchases.city = nil
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("City code can't be blank")
    end

    it 'house_numberが空だと保存できない' do
      @user_purchases.house_number = nil
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("House_number code can't be blank")
    end

    it 'building_nameが空だと保存できない' do
      @user_purchases.building_name = nil
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("Building_name code can't be blank")
    end

    it 'phone_numberが空だと保存できない' do
      @user_purchases.phone_number = nil
      @user_purchases.valid?
      expect(@user_purchases.errors.full_messages).to include("Building_name code can't be blank")
    end



    
   
    
    

  end
end
