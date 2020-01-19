# README

<!-- DB設計 -->


<!-- postは運営が出品していく形になっている -->
## postテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|subtitle|string|
|image|string|null: false|
|content|text|null: false|
|comment|string|
### Association
- has_many :comments dependent: :destroy



## userテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|introduction|text|
|size|integer|
### Association
- has_many :comments dependent: :destroy
<!-- - has_many :likes dependent: :destroy -->




## commentテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|image|string|null: false|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user



<!-- likeテーブルとネストcommentテーブルができそうなら追加する！ -->