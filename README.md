<h1 align="center">README (SNKRDAUNK)</h1>

目次
<br>
・アプリの概要
<br>
・作ろうと思ったきっかけ
<br>
・工夫した点



URL: https://snkrdunk.herokuapp.com/
<br><br>
(herokuでデプロイ)

<p align="center">
  <img width="600" alt="snkr1" src="https://user-images.githubusercontent.com/57933144/73604734-e1b1cd80-45d8-11ea-8b20-a413c5edb400.png">


  <img width="600" alt="snkr2" src="https://user-images.githubusercontent.com/57933144/73604736-e9717200-45d8-11ea-9b0f-1aea65a0535d.png">


  <img width="600" alt="snkr3" src="https://user-images.githubusercontent.com/57933144/73604738-f1311680-45d8-11ea-8340-cfa3d39deeb4.png">

</p>

# DB設計
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
- belongs_to :user

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
- has_many :posts
<!-- - has_many :likes dependent: :destroy -->

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|null: false|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user

<!-- likeテーブルとネストcommentテーブルができそうなら追加する！ -->



