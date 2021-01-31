FactoryBot.define do
  factory :company do
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    staff                 { '山田孝明' }
    company_name          { '株式会社' }
    website               { 'http://localhost:3000/' }
  end
end
