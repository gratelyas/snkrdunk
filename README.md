<h1 align="center">README (SNKRDUNK)</h1>

<b>目次</b>
<br><br>
・アプリの説明、使い方
<br>
・DB設計
<br>
・苦労、工夫した点
<br>
・今後追加する予定の機能
<br>
・感想・まとめ
<br><br>
URL: https://snkrdunk.herokuapp.com/
<br>
(herokuでデプロイ)

<p align="center">
  <img width="600" alt="snkr1" src="https://user-images.githubusercontent.com/57933144/73604734-e1b1cd80-45d8-11ea-8b20-a413c5edb400.png">


  <img width="600" alt="snkr2" src="https://user-images.githubusercontent.com/57933144/73604736-e9717200-45d8-11ea-9b0f-1aea65a0535d.png">


  <img width="600" alt="snkr3" src="https://user-images.githubusercontent.com/57933144/73604738-f1311680-45d8-11ea-8340-cfa3d39deeb4.png">

</p>
<br>

## このアプリの説明・使い方
![SNKRDUNK](https://i.gyazo.com/73d89f225551654128e9fdba83c0a158.gif)

<br>
ニッチな趣味を通した交流サイトを作りたいと思いました。
<br>
私自身がスニーカーが好きでSNKRDUNKというアプリの利用者です。
<br><br>
このアプリは、スニーカーの発売情報やプレミア価格のついている商品について話し合うアプリです。
<br><br>
ログインしているユーザーのみがコメントをできるようになっています。
<br><br>
投稿に関しては、adminユーザーに権限を渡しています。
<br>
運営が投稿したものに対してみんなで話し合うアプリです。


## DB設計
<!-- postは運営が出品していく形になっている -->
### postテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|subtitle|string|
|image|string|null: false|
|content|text|null: false|
|comment|string|
#### Association
- has_many :comments dependent: :destroy
- belongs_to :user

### userテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|introduction|text|
|size|integer|
#### Association
- has_many :comments dependent: :destroy
- has_many :posts
<!-- - has_many :likes dependent: :destroy -->

### commentテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|null: false|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
#### Association
- belongs_to :post
- belongs_to :user

<!-- likeテーブルとネストcommentテーブルができそうなら追加する！ -->
DBは今後いいね機能やコメントに対するSUBCOMMETNなどを実装していきます。


## 工夫や苦労した点

### 管理者だけが投稿や編集・削除できるようにする
<br>
=> 記事を読んでUserテーブルにadminをboolean型で追加してtrueの時に管理権限を持つようにしました。

### TOP画面に横並びで表示していく

### コメントや投稿などへの詳細ページのPATHの設定








