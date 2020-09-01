FactoryBot.define do
  factory :address do
    postal_code { '123-4567' }
    phone_number { '090-1234-5678' }
    prefecture { 2 }
    city { '東京都' }
    house_number { '1-1' }
    building_name { '東京ハイツ' }
    
  end
end
