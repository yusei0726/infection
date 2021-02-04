class Mypage < ApplicationRecord
  belongs_to       :influencer
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :username
    validates :profile
    validates :url
    validates :category_id, numericality: { other_than: 1 }
  end
end
