class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  

  belongs_to :user
  #has_one   :purchase
  has_one_attached :image
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :deliveryfee
  belongs_to_active_hash :shoppingregion
  belongs_to_active_hash :deliverytime


  with_options presence: true do
    
    validates :image
    validates :name
    validates :explanation
    validates :category_id,numericality:{other_than:1} 
    validates :status_id,numericality:{other_than:1} 
    validates :deliveryfee_id,numericality:{other_than:1} 
    validates :shoppingregion_id,numericality:{other_than:1} 
    validates :deliverytime_id,numericality:{other_than:1 } 

    validates :money,numericality: { only_integer: true,greater_than: 300, less_than: 9999999}
    validates :money,format: {with: /\A[0-9]+\z/, message: "は半角数字で入力してください"}

    
  end

end
