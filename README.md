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


