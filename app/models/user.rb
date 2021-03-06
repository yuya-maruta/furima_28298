class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
         with_options presence: true do
          name_regex=/\A[ぁ-んァ-ン一-龥]*\z/
          validates :firstname, format: { with: name_regex, message: "It is invalid. Please enter full-width characters."}
          validates :lastname, format: { with: name_regex, message: "It is invalid. Please enter full-width characters."}
      
          kana_regex=/\A[ァ-ヶー－]+\z/
          validates :firstname_kana,format: { with:kana_regex, message: "It is invalid. Please enter full-width characters."}
          validates :lastname_kana,format: { with: kana_regex, message: "It is invalid. Please enter full-width characters."}
          validates :nickname
          validates :birthday
          validates :password,presence: true, length: { minimum: 6}
          validates :password,format: { with:/\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
        
        end

  
 has_many :items
 has_many :purchases 

end