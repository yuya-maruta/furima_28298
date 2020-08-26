require 'rails_helper'

#describe Item do
  #before do
    #@item = FactoryBot.build(:item)
    #@item.image.attach)
  #end
  #RSpec.describe Item, type: :model do
    describe Item do
      before do
        @item = FactoryBot.build(:item)
        @item.image = fixture_file_upload('public/images/test_image.png')
      end

  describe '商品出品' do

    context '商品出品がうまくいくとき' do
      it "画像が１枚、商品名と商品説明、カテゴリー情報と商品状態の情報、配送料の負担についての情報、発送元の地域についての情報、発送までの日数についての情報、価格についての情報が存在すれば登録できる" do
        expect(@item).to be_valid
      end

      it "価格の範囲が（¥300~¥9,999,999）の間であれば登録できる"do
      expect(@item).to be_valid
      end
     
    end

    context '商品出品がうまくいかないとき' do
      it "imageが空だと登録できない" do
        @item.image = nil
        @item.valid?
       
        expect(@item.errors.full_messages).to include("Image can't be blank")
       
      end
      

      it "商品名が空では登録できない" do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

 
      it "商品の説明が空では登録できない" do
        @item.explanation = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      
      it "商品の状態について情報がないと登録できない" do
        @item.status_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end
      
      it "配送料の負担についての情報がないと登録できない" do
        @item.deliveryfee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Deliveryfee can't be blank")
      end

      it "発送元の地域についての情報がないと登録できない" do
        @item.shoppingregion_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Shoppingregion can't be blank")
      end


      it "発送までの日数についての情報がないと登録できない" do
        @item.deliveryfee_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Deliveryfee can't be blank")
      end
      
      it "価格ついての情報がないと登録できない" do
        @item.money = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Money can't be blank")
      end
      

    end
  end
end