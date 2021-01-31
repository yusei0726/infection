require 'rails_helper'

RSpec.describe Influencer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @influencer = FactoryBot.build(:influencer)
  end

  describe 'インフルエンサー新規登録ができる場合' do
    it '全ての情報が入っていれば登録できること' do
      expect(@influencer).to be_valid
    end
  end

  describe 'インフルエンサー新規登録ができない場合' do
    it '本名が空の状態では保存できない' do
      @influencer.name_kanji = ''
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Name kanji can't be blank")
    end
    it '本名が半角の状態では保存できない' do
      @influencer.name_kanji = 'aaaaaa'
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Name kanji に全角文字を使用してください")
    end
    it 'メールアドレスが空の状態では保存できない' do
      @influencer.email = ''
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Email can't be blank")
    end
    it '同じメールアドレスは保存できない' do
      @influencer.save
      another_influencer = FactoryBot.build(:influencer)
      another_influencer.email = @influencer.email
      another_influencer.valid?
      expect(another_influencer.errors.full_messages).to include('Email has already been taken')
    end
    it 'メールアドレスは＠がないと保存できない' do
      @influencer.email = 'aaaaa'
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include('Email is invalid')
    end
    it 'パスワードが空の状態では保存できない' do
      @influencer.password = ''
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Password can't be blank")
    end
    it 'パスワードは６文字以上でないと保存できない' do
      @influencer.password = 'aa11'
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end
    it 'passwordとpassword_confirmationは同じでないと保存できない' do
      @influencer.password = 'aaaaa1'
      @influencer.password_confirmation = 'aaa111'
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'パスワード（確認用）が空だと保存できない' do
      @influencer.password_confirmation = ''
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it '電話番号が空の状態では購入できない' do
      @influencer.phone_number = nil
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include("Phone number can't be blank")
    end
    it '電話番号はハイフンがある状態では購入できない' do
      @influencer.phone_number = '12-345-678'
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include('Phone number is invalid')
    end
    it '電話番号が10桁か11桁でない状態では購入できない' do
      @influencer.phone_number = '1234567890123'
      @influencer.valid?
      expect(@influencer.errors.full_messages).to include('Phone number is invalid')
    end
  end
end
