# テーブル設計

## users テーブル

|       Column            | Type   | Options     |
| ----------------------- | ------ | ----------- |
| last name               | string | null: false |
| first name              | string | null: false |
| last name(katakana)     | string | null: false |
| first name(katakana)    | string | null: false |
| email                   | string | null: false |
| password                | string | null: false |
| nickname                | string | null: false |
| birthday                |  date  | null: false |

### Association
- has_many : items
- has_many : purchases 

## items テーブル

|     Column      |    Type      |            Options            |
| ----------------|  ----------- | ----------------------------- |
| image           |    string    | null: false                   |
| money           |    integer   | null: false,foreign_key: true |
| name            |    string    | null: false                   |
| explanation     |    text      | null: false                   |
| category        |    integer   | null: false                   |
|  Status         |    integer   | null:false                    |
| Delivery fee    |    integer   | null: false                   |
| Shipping region |    string    | null: false                   |
| Delivery time   |    integer   | null:false                    |



### Association
- has_one  :user
- has_many :purchases


## addresses テーブル

|    Column     |    Type      | Options     |
| ------------- |  ----------- | ----------- |
| postal code   |    string    | null: false |
| prefectures   |    integer   | null: false |
| city          |    string    | null: false |
| address       |    string    | null: false |
| building name |    string    |             |
| phone_number  |    string    | null: false |

### Association
- has_one :purchases



## purchases テーブル

| Column   | Type       |            Options            |
| -------- | ------     | ----------------------------- |
|  user    | references | null: false,foreign_key: true |
|  item    | references | foreign_key: true             |

### Association
- has_many  :users
- has_many  : address
- belong_to : item


