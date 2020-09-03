class UserPurchases

  include ActiveModel::Model
  attr_accessor :postalcode, :prefecture,:city, :house_number, :building_name,:phone_number,:purchase_id,:item_id, :token, :user_id


  with_options presence: true do
    validates :token
    validates :postalcode,format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :city
    validates :house_number
    validates :phone_number,format: {with:/\A\d{11}\z/,message:"It is invalid. Do not include hyphen (-)"}
  end
  validates :prefecture, numericality: { other_than: 1, message: "can't be blank" }


  def save
    purchase = Purchase.create(item_id: item_id, user_id: user_id)
    address = Address.create(postalcode: postalcode, prefecture: prefecture, city: city, house_number: house_number, building_name: building_name,phone_number: phone_number,purchase_id:purchase.id)
  end

end