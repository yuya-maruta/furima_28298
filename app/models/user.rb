class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presence: true
  with_options presence: true do
    validates :firstname
    validates :lastname
    validates :firstname_kana
    validates :lastname_kana
    validates :nickname
    validates :birthday
    validates :password
    validates :email


  end
#has_many :items
#has_many :purchases 

end
#format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' }