FactoryBot.define do
  factory :user do
    email                 {"test@example"}
    password              {"aaa111"}
    password_confirmation {password}
    name_kanji            {"山田孝明"}
    phone_number          {"08012345678"}
  end
end