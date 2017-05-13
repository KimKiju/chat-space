#データベース設計

##usersテーブル(has_many: messages,has_many: groups through: user_group)

|column    |type     |option               |
|:---------|---------|---------------------|
|nickname  |string   |null: false add_index|

***

##groupsテーブル(has_many: messages,has_many: users through:user_grup)

|column    |type     |option                  |
|:---------|---------|------------------------|
|name      |string   |null: false unique: true|

***

##user_groupsテーブル（belongs_to: user,belongs_to: group）

|column    |type     |option                       |
|:---------|---------|-----------------------------|
|user_id   |integer  |null: false foreign_key: true|
|group_id  |integer  |null: false foreign_key: true|


***

##messagesテーブル(belongs_to: user,belongs_to: group)

|column    |type     |option                       |
|:---------|---------|-----------------------------|
|body      |text     |                             |
|user_id   |integer  |null: false foreign_key: true|
|group_id  |integer  |foreign_key: true            |
***
