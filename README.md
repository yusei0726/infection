# テーブル設計

## influencersテーブル
|Column             |Type         |Options                  |
|-------------------|-------------|-------------------------|
|email              |string       |null: false, unique: true|
|encrypted_password |string       |null: false              |
|name_kanji         |string       |null: false              |
|name_kana          |string       |null: false              |

### Association
- has_one  :mypage

## mypageテーブル
|Column             |Type         |Options                  |
|-------------------|-------------|-------------------------|
|username           |string       |null: false              |
|profile            |string       |                         |
|url                |string       |null: false              |
|category_id        |integer      |null: false              |

### Association
- belongs_to :influencer

## companysテーブル
|Column             |Type         |Options                  |
|-------------------|-------------|-------------------------|
|company_name       |string       |null: false              |
|industry_id        |integer      |null: false              |
|email              |string       |null: false, unique: true|
|encrypted_password |string       |null: false              |
|staff              |string       |null: false              |
|website            |string       |null: false              |

### Association
