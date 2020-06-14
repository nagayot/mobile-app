# README

# 機種変更のすヽめ

* 機種変更する際に、どんな機種があるのか/どの機種にするか目星をつけるアプリです。

# 紹介画像

<img width="1440" alt="機種変更のすヽめ" src="https://user-images.githubusercontent.com/64081393/84590971-c18ef680-ae75-11ea-8c5d-015fa5013902.png">


# 主な機能

* ユーザー新規登録/ログイン機能

* お気に入り保存機能
  * こちらはまだ作成中ですが、気になる端末を保存し、何人がその端末を「気になる」しているか分かるようにしていきます。

# 使ったもの(gem等)

* devise
* font-awesome


# 使い方

* デプロイはしていないので、 $ git clone https://github.com/nagayot/mobile-app.git が必要になリます。


# 製作者

* 永吉　達朗

# 

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index unique: true|
|email|string|null: false, add_index unique: true|
|passwprd|string|null: false|

### Association
- has_many :mobiles, through: mobiles_users
- has_many :mobiles_users
- has_many :fvorites


## mobilesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|name|string|null: false|
|body|text|

### Association
- has_many :users, through: mobiles_users
- has_many :mobiles_users
- has_many :favorites


## mobiles_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|mobile_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :mobile
- belongs_to :user


## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|mobile_id|bigint|foreign_key: true|
|user_id|bigint|foreign_key: true|

### Association
- belongs_to :mobile
- belongs_to :user