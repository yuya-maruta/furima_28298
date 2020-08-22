class Item < ApplicationRecord
    #belongs_to :user
    #has_one   :purchase
    has_one_attached :image
    belongs_to_active_hash :category
    belongs_to_active_hash :status
    belongs_to_active_hash :deliveryfee
    belongs_to_active_hash :shoppingregion
    belongs_to_active_hash :deliverytime


  with_options presence: true do

    validates :name
    validates :explanation
    validates :category_id
    validates :status_id
    validates :deliveryfee_id
    validates :shoppingregion_id
    validates :deliverytime_id
    validates :mony

  end

end
