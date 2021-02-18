# README
## tickets テーブル

| Column           | Type        | Options                           |
| --------         | ------      | -----------                       |
| program          | string      | null: false                       |
| text             | text        |                                   |

<!-- ### Association 

- has_many    :order

## orders テーブル

| Column           | Type        | Options                           |
| --------         | ------      | -----------                       |
| name             | string      | null: false                       |
| name_kana        | string      | null: false                       | 
| ticket_id        | references  | null: false,foreign_key: true     |
| tel_num          | integer     | null: false                       |
| sheet            | integer     | null: false                       |

### Association

- belongs_to :ticket -->