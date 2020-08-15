# テーブル設計

## users テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| name           | string | null: false |
| name(katakana) | string | null: false |
| email          | string | null: false |
| password       | string | null: false |
| nickname       | string | null: false |
| birthday       |  date  | null: false |

### Association
- has_many : items
- has_many : purchases 

## items テーブル

| Column     |    Type      |            Options            |
| ---------- |  ----------- | ----------------------------- |
| image      |    string    | null: false                   |
| money      |    integer   | null: false,foreign_key: true |
| item name  |    string    | null: false                   |
| explanation|    text      | null: false                   |
| category   |    integer   | null: false                   |
|  Status    |    string    | null:false                    |

### Association
- belongs_to :user
- has_many :purchases


## addresses テーブル

|    Column     |    Type      | Options     |
| ------------- |  ----------- | ----------- |
| postal code   |    string    | null: false |
| prefectures   |    integer   | null: false |
| city          |    string    | null: false |
| address       |    string    | null: false |
| building name |    string    | null: false |
| phone number  |    string    | null: false |

### Association
- belongs_to :purchases


## purchases テーブル

| Column   | Type   |            Options            |
| -------- | ------ | ----------------------------- |
|  user_id | string | null: false,foreign_key: true |

### Association
- belongs_to : user
- belongs_to : address
- has_many : items

