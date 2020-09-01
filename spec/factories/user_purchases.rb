FactoryBot.define do
  factory :user_purchases do
    name { '鈴木' }
    name_reading { 'スズキ' }
    nickname { 'suzuki' }
    postal_code { '123-4567' }
    phone_number { '090-1234-5678' }
    prefecture { 2 }
    city { '東京都' }
    house_number { '1-1' }
    building_name { '東京ハイツ' }
    money { 2000 }
    
  end
end
