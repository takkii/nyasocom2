## Project Name, nyasocom2.

```markdown
# env
・ ubuntu server
・ ruby-3.1.0 + YJIT
・ rails-7.0.1
```

_nyasocomのRails版_

※ nyasocom_betaの名称も使用しています。

試作品として当初は作っていました。その後、nyasocom2として公開しました。

### Web Library System Name is '鬼灯'

```markdown
- Ruby version 3.0.1 ~

  ※ GitHubのHEAD（v1.1.5 ~）では、mroongaの依存をなくしました。

- Configuration Rails 6.1.3.2 ~
```

> 動作確認

```markdown
- Windows ○
- UNIX系 ○
```

### ログインするためには

```markdown
# 環境構築
cp settings.sample.yml config/settings.yml

# settings.yml
database:
  password: "Your_Local_MySQL_Password"
```

#### ログイン時の認証メールをブラウザで処理できます。

[letter_opener](http://tk2-410-46434.vs.sakura.ne.jp:3000/mail/letter/web/open/engine)

#### 注意

```markdown
※ アカウント登録時に認証するとき、

letter_opener側がlocalhostで返すので、

URLをサーバのドメインに修正し実行する必要があります。
```

他の認証でも、同じように処理します。

### 管理者権限付与

```markdown
rails c

user = User.find(1) # 管理者対象を User(id 番号指定)
user.update_attribute(:admin, "true") # 指定した番号の User を登録
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

### for example

```markdown
gem install mysql2 --platform=ruby -- '--with-mysql-lib="C:\Users\sudok\mysql-connector-c-6.1.11-win32\lib" --with-mysql-include="C:\Users\sudok\mysql-connector-c-6.1.11-win32\include" --with-mysql-dir="C:\Users\sudok\mysql-connector-c-6.1.11-win32"'
```

```markdown
ALTER DATABASE nyasocom_beta_development DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

#### リストア、Powershell(例)

```markdown
cmd /c 'mysql -u root -p < backup/2022-01-01_nyasocom2_backup.dump'
```

### キャッシュ

```markdown
rake tmp:cache:clear
```

#### Intel Mac

```markdown
# mysql2
gem install mysql2 -v '0.5.3' -- --with-opt-dir=$(brew --prefix openssl) --with-ldflags=-L/usr/local/Cellar/zstd/1.5.2/lib
```

[Qiita_mysql2](https://qiita.com/takkii/items/a58898ad1f6128cd127c)

```markdown
# database.yml
socket: /tmp/mysql.sock 
```

#### ローカル版

[letter_opener](http://localhost:3000/mail/letter/web/open/engine)

※ 修正個所、にゃそこん２のログインまわりiMacだとレイアウト崩れあり。

#### VPSサーバ側SOXインストール

```markdown
sudo apt-get install alsa-utils sox libsox-fmt-all
```

#### Windows側SOXインストール

[Win_SOX](https://sourceforge.net/projects/sox/) | [依存DLL](https://www.videohelp.com/software?d=sox-14.4.0-libmad-libmp3lame.zip)

### 鬼灯のレイアウト

![鬼灯レイアウト(傘挙動 青→白)](https://github.com/takkii/nyasocom2/blob/main/public/images/hozuki.gif)
