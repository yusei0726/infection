## アプリケーション名
infection

## アプリケーション概要
Infectionは、自社の商品をPRしたい会社と、発信力のあるインフルエンサーの互いのニーズを満たすマッチングプラットフォームです。

## URL
3.113.173.118

## basic認証
ユーザー名: admin
パスワード: aaaaaa1

## テスト用アカウント(インフルエンサー)
メールアドレス: a@a.com
パスワード: aaaaaa1

## テスト用アカウント(インフルエンサー)
メールアドレス: b@b.com
パスワード: bbbbbb1

## 利用方法
インフルエンサー側はユーザー登録後、自分のプロフィールを投稿し、企業からの連絡を待ちます。
企業側はユーザー登録後、トップページから気になるインフルエンサーを探し、詳細ページに遷移する。アイコンをクリックし、インフルエンサーのsnsアカウントからDMを送ります。

## 目指した課題解決
instagram,twitter,youtube等のsnsプラットフォームがバラバラにある中で、企業側のインフルエンサーを探し出す時間的コストを減らすという課題解決を目指しました。
インフルエンサー側は、プロフィールを投稿しただけで企業からのオファーを待つことができます。

## 実装予定の機能
今後はこのwebアプリケーションで一連のやりとりを完結できるよう、インフルエンサーと企業のコメント会話機能、企業側からインフルエンサーへの決済機能等の搭載を考えております。

# テーブル設計

## influencersテーブル
|Column             |Type         |Options                  |
|-------------------|-------------|-------------------------|
|email              |string       |null: false, unique: true|
|encrypted_password |string       |null: false              |
|name_kanji         |string       |null: false              |
|phone_number       |string       |null: false              |

### Association
- has_one  :mypage

## mypageテーブル
|Column             |Type         |Options                  |
|-------------------|-------------|-------------------------|
|username           |string       |null: false              |
|profile            |string       |null: false              |
|url                |string       |null: false              |
|category_id        |integer      |null: false              |

### Association
- belongs_to :influencer

## companiesテーブル
|Column             |Type         |Options                  |
|-------------------|-------------|-------------------------|
|company_name       |string       |null: false              |
|email              |string       |null: false, unique: true|
|encrypted_password |string       |null: false              |
|staff              |string       |null: false              |
|website            |string       |null: false              |

### Association


