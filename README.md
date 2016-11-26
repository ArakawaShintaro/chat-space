##DB構成

### Usersテーブル

| column | 説明 | type |
|---|---|---|
| name | ユーザー名 | string |

※その他deviseの自動生成


### Groupsテーブル

| column | 説明 | type |
|---|---|---|
| name | グループ名 | string |



### GroupUsersテーブル（中間テーブル）

| column | 説明 | type |
|---|---|---|
| user_id | Usersテーブルの外部キー | intger |
| group_id | Groupsテーブルの外部キー | intger |



### Messagesテーブル
| column | 説明 | type |
|---|---|---|
| text | 本文内容 | text |
| image | 画像 | string |
| user_id | Usersテーブルの外部キー | intger |
| group_id | Groupsテーブルの外部キー | intger |
