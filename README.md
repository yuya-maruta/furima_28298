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

|     Column      |    Type      |     Options                 |
| ----------------|  ----------- | ----------------------------|
| image           |    string    | null: false                 |
| money           |    integer   | null: false                 |
| name            |    string    | null: false                 |
| explanation     |    text      | null: false                 |
| category        |    integer   | null: false                 |
| status         |    integer   | null:false                  |
| delivery fee    |    integer   | null: false                 |
| shopping region |    integer   | null: false                 |
| delivery time   |    integer   | null:false                  |
| user            | references   |null: false,foreign_key: true|


### Association
- belongs_to :user
- has_one   :purchase


## addresses テーブル

|    Column     |    Type      |   Options                   |
| ------------- |  ----------- | ----------------------------|
| postal code   |    string    | null: false                 |
| prefectures   |    integer   | null: false                 |
| city          |    string    | null: false                 |
| house_number  |    string    | null: false                 |
| building_name |    string    |                             |
| phone_number  |    string    | null: false                 |
| purchase      |   references |null: false,foreign_key: true|

### Association
- belongs_to :purchase 



## purchases テーブル

| Column   | Type       |            Options            |
| -------- | ------     | ----------------------------- |
|  user    | references | null: false,foreign_key: true |
|  item    | references | null: false,foreign_key: true |

### Association
- belongs_to  :user
- has_one   :address
- belong_to : item


