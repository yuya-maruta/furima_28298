class Address < ApplicationRecord
  belongs_to :purchase 
 
  with_options presence: true do

    validates :postalcode,format: { with: /\A\d{3}[-]\d{4}\z/, message: "は全角で入力してください。"}
    validates :prefectures,numericality:{other_than:1} 
    validates :city
    validates :house_number
    validates :building_name
    validates :phone_number,format: {with:/\A\d{11}\z/,}
  end

end
