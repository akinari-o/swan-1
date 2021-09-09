#禁煙アプリ「swan」

##テーブル設計
## users テーブル

| Column                      | Type                 | Options                        |
| --------------------------- | ---------------------| ------------------------------ |
| nickname                    | string               | null: false                    |
| email                       | string               | null: false, unique: true      |
| encrypted_password          | string               | null: false                    |
| cigarette                   | integer              | null: false                    |
| price                       | integer              | null: false                    |

### Association

- has_one :start


## starts テーブル

| Column                      | Type                 | Options                        |
| --------------------------- | -------------------- | ------------------------------ |
| users                       | references           | null: false, foreign_key: true |

### Association

- belongs_to :user