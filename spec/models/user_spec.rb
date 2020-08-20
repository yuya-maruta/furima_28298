require 'rails_helper'

describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとpassword_confirmation、苗字名前と苗字（カナ）名前（カナ）、生年月日が存在すれば登録できる" do
        expect(@user).to be_valid

      end
     
      it "passwordが6文字以上であれば登録できる" do
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      
      it "emailに@がないと登録できない" do
        @user.email = "tanagmail.com"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      
      it "passwordが半角英数字でないと登録できない" do
        @user.password = "tttttttt"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      
      it "passwordが5文字以下であれば登録できない" do
        @user.password = "00000"
        @user.password_confirmation = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "苗字が空では登録できない"do
      @user.lastname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Lastname can't be blank")
      end
      it "名前が空では登録できない"do
      @user.firstname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Firstname can't be blank")
      end
      it "苗字（カナ）が空では登録できない"do
       @user.lastname_kana = ''
       @user.valid?
      #  binding.pry
       expect(@user.errors.full_messages[0]).to include("Lastname kana can't be blank")
      end
      it "名前（カナ）が空では登録できない"do
       @user.firstname_kana = ''
       @user.valid?
      #  binding.pry
       expect(@user.errors.full_messages[0]).to include("Firstname kana can't be blank")
      end
      it "生年月日が空では登録できない"do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
    end
  end
end