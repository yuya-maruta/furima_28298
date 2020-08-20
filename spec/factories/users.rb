FactoryBot.define do
  factory :user do
    lastname             {"田中"}
    firstname            {"太郎"}
    lastname_kana        {"タナカ"}
    firstname_kana       {"タロウ"}
    birthday             {"2020/1/1"}
    nickname              {"tana"}
    email                 {"tana@gmail.com"}
    password              {"test1234"}
    password_confirmation {password}
  end
end