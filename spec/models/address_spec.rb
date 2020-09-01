require 'rails_helper'

RSpec.describe Address do
  describe '住所の保存' do
    before do
      @address = FactoryBot.build(:address)
    end
    it 'postal_codeが空だと保存できないこと' do
      @address.postal_code = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'cityが空だと保存できないこと' do
      @address.city = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("City code can't be blank")
    end

    it 'house_numberが空だと保存できないこと' do
      @address.house_number = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("House_number code can't be blank")
    end

    it 'building_nameが空だと保存できないこと' do
      @address.building_name = nil
      @address.valid?
      expect(@user_purchases.errors.full_messages).to include("Building_name code can't be blank")
    end

    it 'phone_numberが空だと保存できないこと' do
      @address.phone_number = nil
      @address.valid?
      expect(@address.errors.full_messages).to include("Building_name code can't be blank")
    end

  

end
