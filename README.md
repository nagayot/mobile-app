# README

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

### Association
- has_many :mobiles, through: mobiles_users
- has_many :mobiles_users


## mobilesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|name|string|null: false|
|body|text|

### Association
- has_many :users, through: mobiles_users
- has_many :mobiles_users


## mobiles_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|mobile_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :mobile
- belongs_to :user