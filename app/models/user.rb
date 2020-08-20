class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presence: true
  with_options presence: true do
    name_regex=/\A[ぁ-んァ-ン一-龥]*\z/
    validates :firstname, format: { with: name_regex, message: "は全角で入力してください。"}
    validates :lastname, format: { with: name_regex, message: "は全角で入力してください。"}

    kana_regex=/\A[ァ-ヶー－]+\z/
    validates :firstname_kana,format: { with:kana_regex, message: "は全角カタカナで入力して下さい。"}
    validates :lastname_kana,format: { with: kana_regex, message: "は全角カタカナで入力して下さい。"}
    validates :nickname
    validates :birthday
    validates :password,presence: true, length: { minimum: 6}
    # validates :password, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
    validates :password,format: { with:/\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}

    #validates :email


  end
#has_many :items
#has_many :purchases 

end