## Project Name, nyasocom2.

_nyasocomのRails版_

※ nyasocom_betaの名称も使用しています。

試作品として当初は作っていました。その後、nyasocom2として公開しました。

### Web Library System Name is '鬼灯'

```markdown
- Ruby version 3.0.1

  ※ GitHubのHEAD（v1.1.5 ~）では、mroongaの依存をなくしました。

- Configuration Rails 6.1.3.2

動作確認

- Windows ×
※ 起動時、no implicit conversion of Hash into Integerを踏んでerror画面へ変移するため。

- UNIX系統 (MacOS and Ubuntu 20.04(wsl) ) ○
※ main and develop branch → MacOS
※ wsl branch → ubuntu20.04(wsl)
```

### ログインするためには

```markdown
> .bashrc or etc shell.
export NYASOCOM_BETA_DATABASE_PASSWORD="database password"

> Google アカウントを登録

config/environments/development.rb

> 67-68 行目 認証時 Google アカウント指定
:username => Settings.gmail[:user_name],
:password => Settings.gmail[:password],

> config/database.yml
password: <%= Settings.database.password %>

> 環境構築
> cp settings.sample.yml config/settings.yml

database:
  password: "Your_Local_MySQL_Password"
```

### Google セキュリティ管理

[Google_Access_Admin](https://www.google.com/settings/security/lesssecureapps)

```markdown
> セキュリティを下げておく → 認証後、設定を戻す

sign up → Gmail and Gmail パスワード登録
→ Gmail に本登録メールが届く → 認証
```

<s>Gmail でメールが受信できなかった場合</s>

※ HEADでは確認用メール認証を解除しました。

```markdown
rails server 実行コンソール内

<p>Welcome karuma.reason@gmail.com!</p>
<p>You can confirm your account email through the link below:</p>
<p><a href="　(URL and TOKEN)　"> (URL and TOKENをブラウザに貼り付けで本人確認できる) Confirm my account</a></p>
```

### 管理者権限付与

```markdown
rails c

user = User.find(1) # 管理者対象を User(id 番号指定)
user.update_attribute(:admin, "true") # 指定した番号の User を登録
```

### 管理者のみ管理画面設定 (11~12 行目)

> config/initializers/rails_admin.rb

```markdown
## == CancanCan ==

config.authorize_with :cancancan
```

### macports (対処: mysql57)

```markdown
Mysql2::Error::ConnectionError: Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)

sudo ln -s /opt/local/var/run/mysql57/mysqld.sock /tmp/mysql.sock
```

### 新レイアウト適用

```markdown
npm install -g yarn
yarn add jquery
yarn add bootswatch@4.5.2
```

### 鬼灯 ( 環境構築 )

```markdown
環境構築
----------------
git clone https://github.com/takkii/nyasocom2.git
cd nyasocom2
rm -rf Gemfile.lock
bundle install
----------------
DB操作
----------------
rake db:create
rake db:migrate
rake db:seed
----------------
Rails 起動&停止
----------------
# Server Start
rails s
# Server Stop
Ctrl + C

#----------------
#必要なとき
#----------------
# mysql -uroot -p
# パスワード入力:
# use nyasocom_beta_development;
# drop table active_storage_variant_records;
#rake db:migrate
必要なときはないと思います。

# webpack依存を外す前
# npm install -g yarn
# yarn add jquery
# rails webpacker:install
TypeScriptが必要になれば戻します。

----------------
# MacOS big sur
----------------

ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)
sudo touch /tmp/mysql.sock
sudo chown takkii /tmp/mysql.sock

ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/tmp/mysql.sock' (38)
sudo mysql.server start

自動起動
brew services start mysql

※ sudoはないようにできるかも。

----------------
#wsl (ubuntu)
----------------
sudo service mysql start
----------------
#wsl (centos8.1)
----------------
sudo mkdir /var/run/mysqld
sudo touch /var/run/mysqld/mysqld.pid
cd /var/run/mysqld
sudo chown mysql:mysql mysqld.pid
sudo systemctl start mysqld
sudo systemctl status mysqld

# mysqld.service - MySQL 8.0 database server
    Loaded: loaded (/usr/lib/systemd/system/mysqld.service, enabled)
    Active: active (running)

mysql_config --socket
sudo ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock

※ 自分の環境では、PCを再起動後もう一度同じ手順でつながりました。

# RockyLinux
# Can’t connect to local MySQL server through socket ‘/var/lib/mysql/mysql.sock’ (111)
sudo genie -i
# Ctrl+Cのあと繰り返し
genie -s
sudo systemctl start mysqld
# sudo systemctl enable mysqld

※ WSL2では2つのディストロでmysqlプロセスは起動できないみたいです。

rmagick
sudo dnf --enablerepo=powertools install lcms2-devel
sudo dnf --enablerepo=powertools install ghostscript-devel
sudo dnf --enablerepo=powertools install openexr-devel
sudo dnf --enablerepo=powertools install jasper-devel
sudo yum -y install ImageMagick ImageMagick-devel

----------------
# Sakura VPS
----------------

rails s -b 0.0.0.0

```

<s>sudo ln -s /var/run/mysqld/mysqld.sock /tmp/mysql.sock</s>

> 管理画面URL

http://tk2-410-46434.vs.sakura.ne.jp:3000/admin

> ダンプ、リストア

```markdown
# destroyするときのために
rails g task db

# 定期的にバックアップ
rails db:my_dump_backup

# 手動でリストア
mysql -u root -p < backup/戻す対象の日付_nyasocom2_backup.dump

# ダンプ
rails db:dump

# リストア
rails db:restore

#※ ダンプ、リセット
rails db:dump_reset

#※ ダンプ、リセット、リストア
rails db:dump_reset_restore

# デフォルト (作成、マイグレーション、シードデータ投入)
rails db:default_db

# DB操作 (削除、作成、マイグレーション、シードデータ投入)
rails db:my_default_db
```

※ ダンプ、リストアの対象、自前MySQLのDBすべてです。

### 鬼灯のレイアウト

![鬼灯レイアウト(傘挙動 青→白)](https://github.com/takkii/nyasocom2/blob/main/public/images/hozuki.gif)
