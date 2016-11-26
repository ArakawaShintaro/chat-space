##DB構成

### Usersテーブル

| column | 説明 | type |
|---|---|---|
| name | ユーザー名 | string |

※その他deviseの自動生成

- アソシエーション
  - has many messages
  - has many group_users
  - has many groups through: :group_users



### Groupsテーブル

| column | 説明 | type |
|---|---|---|
| name | グループ名 | string |

- アソシエーション
  - has many messages
  - has many group_users
  - has many users through: :group_users



### GroupUsersテーブル（中間テーブル）

| column | 説明 | type |
|---|---|---|
| user_id | Usersテーブルの外部キー | intger |
| group_id | Groupsテーブルの外部キー | intger |

- アソシエーション
  - belongs_to :user
  - belongs_to :group



### Messagesテーブル
| column | 説明 | type |
|---|---|---|
| text | 本文内容 | text |
| image | 画像 | string |
| user_id | Usersテーブルの外部キー | intger |
| group_id | Groupsテーブルの外部キー | intger |

- アソシエーション
  - belongs_to :user
  - belongs_to :group



##Ruby version
2.3.1


##Rails version
5.0.0.1
