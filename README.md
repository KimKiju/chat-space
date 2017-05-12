#データベース設計

##usersテーブル(has_many: messages,has_many: user_groups)

|column    |type     |option               |
|:---------|---------|---------------------|
|email     |string   |null: false          |
|password  |string   |null: false          |
|nickname  |string   |null: false add_index|

***

##groupsテーブル(has_many: messages,has_many: user_groups)

|column    |type     |option               |
|:---------|---------|---------------------|
|group_name|string   |null: false          |

***

##user_groupsテーブル（belongs_to: user,belongs_to: group）

|column    |type     |option               |
|:---------|---------|---------------------|
|user_id   |integer  |null: false          |
|group_id  |integer  |null: false          |


***

##messagesテーブル(belongs_to: user,belongs_to: group)

|column    |type     |option               |
|:---------|---------|---------------------|
|body      |text     |                     |
|user_id   |integer  |null: false          |
|group_id  |integer  |                     |
***
