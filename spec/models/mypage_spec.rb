require 'rails_helper'

RSpec.describe Mypage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @mypage = FactoryBot.build(:mypage)
  end

  describe 'プロフィールを投稿できる場合' do
    it '全ての情報が入っていれば投稿できること' do
      expect(@mypage).to be_valid
    end
  end

  describe 'プロフィール投稿ができない場合' do
    it 'ユーザー名が空の状態では保存できない' do
      @mypage.username = nil
      @mypage.valid?
      expect(@mypage.errors.full_messages).to include("Username can't be blank")
    end
    it 'プロフィールが空の状態では保存できない' do
      @mypage.profile = nil
      @mypage.valid?
      expect(@mypage.errors.full_messages).to include("Profile can't be blank")
    end
    it 'URLが空の状態では保存できない' do
      @mypage.url = nil
      @mypage.valid?
      expect(@mypage.errors.full_messages).to include("Url can't be blank")
    end
    it 'カテゴリーIDが１の状態では保存できない' do
      @mypage.category_id = 1
      @mypage.valid?
      expect(@mypage.errors.full_messages).to include("Category must be other than 1")
    end
    it 'カテゴリーIDが空の状態では保存できない' do
      @mypage.category_id = nil
      @mypage.valid?
      expect(@mypage.errors.full_messages).to include("Category can't be blank")
    end
    it 'プロフィール画像が空の状態では保存できない' do
      @mypage.image = nil
      @mypage.valid?
      expect(@mypage.errors.full_messages).to include("Image can't be blank")
    end
  end
end
