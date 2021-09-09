#禁煙アプリ「swan」

概要
禁煙することによるメリットを可視化することが出来、さらに他の人に共有することにより禁煙のモチベーションを
維持することが出来るアプリ

URL
https://swan-1.herokuapp.com/

テスト用アカウント
Email: a@gmail.com
Password: 33333333

Basic認証
username: swan
password: 33333331

利用方法
新規登録する際に普段吸っているタバコの本数、1箱の価格を入力し、禁煙開始ボタンを押す

目指した課題解決
禁煙したいユーザーのモチベーションを維持させるために、禁煙によってもたらされるお金の節約や健康維持を
可視化、禁煙したい他の人との共有を経ることで禁煙成功へと導くことを目的としている



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