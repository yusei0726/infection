FactoryBot.define do
  factory :influencer do
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    name_kanji            { '山田孝明' }
    phone_number          { '08012345678' }
  end
end
