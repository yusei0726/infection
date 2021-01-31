class Mypage < ApplicationRecord

  with_options presence: true do
    validates :username
    validates :profile
    validates :url
    validates :category_id, numericality: { other_than: 1 }
  end

  belongs_to :influencer
end
