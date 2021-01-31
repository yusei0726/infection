require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @company = FactoryBot.build(:company)
  end

  describe '会社の新規登録ができる場合' do
    it '全ての情報が入っていれば登録できること' do
      expect(@company).to be_valid
    end
  end

  describe '会社の新規登録ができない場合' do
    it 'スタッフ名が空の状態では保存できない' do
      @company.staff = nil
      @company.valid?
      expect(@company.errors.full_messages).to include("Staff can't be blank")
    end
    it 'スタッフ名が半角の状態では保存できない' do
      @company.staff = 'aaaaaa'
      @company.valid?
      expect(@company.errors.full_messages).to include("Staff に全角文字を使用してください")
    end
    it 'メールアドレスが空の状態では保存できない' do
      @company.email = nil
      @company.valid?
      expect(@company.errors.full_messages).to include("Email can't be blank")
    end
    it '同じメールアドレスは保存できない' do
      @company.save
      another_company = FactoryBot.build(:company)
      another_company.email = @company.email
      another_company.valid?
      expect(another_company.errors.full_messages).to include('Email has already been taken')
    end
    it 'メールアドレスは＠がないと保存できない' do
      @company.email = 'aaaaa'
      @company.valid?
      expect(@company.errors.full_messages).to include('Email is invalid')
    end
    it 'パスワードが空の状態では保存できない' do
      @company.password = nil
      @company.valid?
      expect(@company.errors.full_messages).to include("Password can't be blank")
    end
    it 'パスワードは６文字以上でないと保存できない' do
      @company.password = 'aa11'
      @company.valid?
      expect(@company.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end
    it 'passwordとpassword_confirmationは同じでないと保存できない' do
      @company.password = 'aaaaa1'
      @company.password_confirmation = 'aaa111'
      @company.valid?
      expect(@company.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'パスワード（確認用）が空だと保存できない' do
      @company.password_confirmation = ''
      @company.valid?
      expect(@company.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'ウェブサイトのURLが空の状態では購入できない' do
      @company.website = nil
      @company.valid?
      expect(@company.errors.full_messages).to include("Website can't be blank")
    end
    it '会社名が空の状態では購入できない' do
      @company.company_name = nil
      @company.valid?
      expect(@company.errors.full_messages).to include("Company name can't be blank")
    end
  end
end
