FactoryBot.define do
  factory :item do
    
    #after(:build) do |item|
      #item.images << FactoryBot.build(:image, item: item)
    #end  
    #image             {fixture_file_upload('public/images/test_image.png')}
    money            {"1000"}
    name           {"商品"}
    explanation       {"あいうえお"}
    category_id             {"2"}
    status_id              {"2"}
    deliveryfee_id                 {"2"}
    shoppingregion_id              {"2"}
    deliverytime_id       {"2"}
    association :user

  end
end