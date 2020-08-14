# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| nickname | string | null: false |
| birthday | integer| null: false |

### Association
- has_many : items
- has_many : address


## items テーブル

| Column     |    Type      |            Options            |
| ---------- |  ----------- | ----------------------------- |
| image      |  references  | null: false                   |
| money      |    integer   | null: false,foreign_key: true |
| item name  |    string    | null: false                   |
| explanation|    string    | null: false                   |
| category   |    integer   | null: false                   |

### Association
- belongs_to :users
- belongs_to :address


## address テーブル

|    Column     |    Type      | Options     |
| ------------- |  ----------- | ----------- |
| postal code   |    integer   | null: false |
| prefectures   |    string    | null: false |
| city          |    string    | null: false |
| address       |    string    | null: false |
| building name |    string    | null: false |
| phone number  |    integer   | null: false |

### Association
- belongs_to :items
- belongs_to :address


## purchases テーブル

| Column   | Type   |            Options            |
| -------- | ------ | ----------------------------- |
| buyer    | string | null: false,foreign_key: true |

### Association
- has_many : users
- has_many : address
- has_many : items

