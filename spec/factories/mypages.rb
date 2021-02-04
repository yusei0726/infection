FactoryBot.define do
  factory :mypage do

    association :influencer

    username              { 'name' }
    profile               { 'describedescribedescribe' }
    url                   { 'http://localhost:3000/mypages/new.2' }
    category_id           { 2 }

    after(:build) do |mypage|
      mypage.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
