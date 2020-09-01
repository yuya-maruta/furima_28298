FactoryBot.define do
  factory :user_purchases do
   
    postalcode { '123-4567' }
    phone_number { '09012345678' }
    prefecture { 2 }
    city { '東京都' }
    house_number { '1-1' }
    token {'a1b2'}
    user_id {1}
    item_id {1}

    
  end
end
