# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#  Examples2:
#   Book.create(:isbn=>'',:title=>'',:price=>'',:publish=>'',:published=>'',:cd=>'true',:picture=>'.app/assets/images/')
#

# Book
Book.create(:isbn=>'9784798053639',:title=>'Pythonプログラミング逆引き大全',:price=>'2600',:publish=>'金城俊哉',:published=>'2018/04/01',:cd=>'true')
Book.create(:isbn=>'9784863541122',:title=>'Java逆引きハンドブック',:price=>'4000',:publish=>'株式会社エイベル',:published=>'2012/10/27',:cd=>'true')
Book.create(:isbn=>'9784863540224',:title=>'Ruby逆引きハンドブック',:price=>'3800',:publish=>'るびきち',:published=>'2009/05/25',:cd=>'true')
Book.create(:isbn=>'9784863542440',:title=>'改訂2版 Ruby逆引きハンドブック',:price=>'3820',:publish=>'卜部昌平',:published=>'2018/08/28',:cd=>'true')
Book.create(:isbn=>'9784797363821',:title=>'Rails3レシピブック 190の技',:price=>'2980',:publish=>'高橋征義',:published=>'2011/07/25',:cd=>'true')
Book.create(:isbn=>'9784774149806',:title=>'Ruby on Rails 3 ポケットリファレンス',:price=>'2780',:publish=>'山田祥寛',:published=>'2012/01/26',:cd=>'true')
Book.create(:isbn=>'9784862671264',:title=>'jpmobileによるモバイルサイト構築',:price=>'2376',:publish=>'小川 伸一郎',:published=>'2012/02/21',:cd=>'true')
Book.create(:isbn=>'9784844333753',:title=>'Ruby on Rails環境構築ガイド',:price=>'3024',:publish=>'黒田努',:published=>'2013/3/22',:cd=>'true')
Book.create(:isbn=>'9784774165165',:title=>'パーフェクト Ruby on Rails',:price=>'3110',:publish=>'すがわらまさのり',:published=>'2014/06/06',:cd=>'true')
Book.create(:isbn=>'9784798121932',:title=>'The RSpec Book',:price=>'4536',:publish=>'David Chelimsky',:published=>'2012/02/22',:cd=>'true')
Book.create(:isbn=>'9784274066092',:title=>'dRubyによる分散・Webプログラミング',:price=>'3456',:publish=>'関将俊',:published=>'2005/7/1',:cd=>'true')
Book.create(:isbn=>'9784774183619',:title=>'オブジェクト指向設計実践ガイド',:price=>'3542',:publish=>'髙山泰基',:published=>'2016/09/02',:cd=>'true')
Book.create(:isbn=>'9784873111308',:title=>'詳説 正規表現 第2版 ',:price=>'2587',:publish=>'田和 勝',:published=>'2003/5/26',:cd=>'true')
Book.create(:isbn=>'9784894714809',:title=>'プログラマのためのSQL 第2版',:price=>'4500',:publish=>'ジョー セルコ',:published=>'2001/04/01',:cd=>'true')
Book.create(:isbn=>'9784798122335',:title=>'Hadoop徹底入門',:price=>'3800',:publish=>'太田 一樹',:published=>'2011/01/28',:cd=>'true')
Book.create(:isbn=>'9784894717152',:title=>'Java言語仕様 第3版',:price=>'5700',:publish=>'ビル ジョイ',:published=>'2006/12/01',:cd=>'true')
Book.create(:isbn=>'9784501552602',:title=>'プログラミング言語 Java 第4版',:price=>'4212',:publish=>'ジェームズ ゴスリン',:published=>'2014/05/10',:cd=>'true')
Book.create(:isbn=>'9784777512126',:title=>'Javaゲーム制作教科書',:price=>'2300',:publish=>'片山幸雄',:published=>'2006/04/01',:cd=>'true')
Book.create(:isbn=>'9784621066058',:title=>'EFFECTIVE JAVA 第2版',:price=>'3888',:publish=>'柴田芳樹',:published=>'2014/03/11',:cd=>'true')
Book.create(:isbn=>'9784798124605',:title=>'Beginning Java EE 6',:price=>'4536',:publish=>'Antonio Goncalves',:published=>'2012/03/09',:cd=>'true')
Book.create(:isbn=>'9784844335344',:title=>'Effective Android',:price=>'3200',:publish=>'TechBooster',:published=>'2014/01/17',:cd=>'true')
Book.create(:isbn=>'9784048703673',:title=>'サーバサイドJavaScript',:price=>'3800',:publish=>'清水俊博',:published=>'2014/02/27',:cd=>'true')
Book.create(:isbn=>'9784621303252',:title=>'Effective Java 第3版',:price=>'4320',:publish=>'柴田茂樹 訳',:published=>'2018/10/30',:cd=>'true')
Book.create(:isbn=>'9784295003038',:title=>'GitLab実践ガイド',:price=>'2700',:publish=>'北山晋吾',:published=>'2018/02/01',:cd=>'true')
Book.create(:isbn=>'9784844331568',:title=>'改訂新版 基礎Ruby on Rails',:price=>'3200',:publish=>'黒田努',:published=>'2012/03/05',:cd=>'true')
Book.create(:isbn=>'9784295004608',:title=>'改訂4版 基礎 Ruby on Rails',:price=>'3780',:publish=>'黒田努',:published=>'2018/09/07',:cd=>'true')
Book.create(:isbn=>'9784844335924',:title=>'実践Ruby on Rails 4',:price=>'3780',:publish=>'黒田努',:published=>'2014/05/23',:cd=>'true')

#Book.create(:isbn=>'',:title=>'',:price=>'',:publish=>'',:published=>'',:cd=>'true')

Blog.create(:days=>'2021/10/8', :title=>'初投稿、祝ブログ機能。', :memo=>'### ブログ機能が付きました。

> ブログ機能なので、JavaやDBやRubyなど、電気・電子、PCパーツなどの記事を書いていきたい。もちろん、実装した機能の説明も入れていく。※ 容量は気にするべきかもしれない。

```ruby
require "date"

class Sample
  def self.ruby
     puts Time.now
  end
end

Sample.ruby
```

_現在時刻を発生するコード_

>チャット機能にするか迷った。

異なるユーザを必要としない多対多の関連付けなどがなく比較的に実装数が少ないブログ機能にした。
')

Blog.create(:days=>'2021/10/8', :title=>'Wikiフォルダより', :memo=>'## Project Name, nyasocom2.

_nyasocomのRails版_

※ nyasocom_betaの名称も使用しています。

試作品として当初は作っていました。その後、nyasocom2として公開しました。

### Web Library System Name is "鬼灯""

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
Mysql2::Error::ConnectionError: Can not connect to local MySQL server through socket "/tmp/mysql.sock" (2)

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
')


Blog.create(:days=>'2021/10/9', :title=>'にゃそこんのREADME', :memo=>'<div align="center"><img src="https://github.com/takkii/nyasocom2/blob/main/public/images/hozuki.png" alt="hozuki" title="logo">
<br />
<br />
<a href="https://github.com/takkii/nyasocom2/wiki/manual">Wiki</a>に環境構築を移動しました。
<br />
<br />
<div style="text-align: center;">にゃそこん2、始動 !</div>
</div>

※ タグが読めてないのもあります。')

Blog.create(:days=>'2021/10/9', :title=>'実装記録', :memo=>'### カミナリのページネーション追加

```markdown
ブログページにもカミナリのページネーション追加しました。これにより、検索機能も付帯します。
```

#### より使いやすくなりました。

※ ログを乗せようとしたのですが、文字数が多すぎて入りきりませんでした。文字制限あるようですね。')

Blog.create(:days=>'2021/10/10', :title=>'本登録', :memo=>'### さくらVPSの契約、本登録しました。

> 今日からスタートですね。

朝方、メールが来て驚いたので、

早めることにしました。

継続して利用できるといいなぁ。')

Blog.create(:days=>'2021/10/11', :title=>'erb-linter導入', :memo=>'>ERBを書くときにLinterが動作するようにしました。これからのための変更です。

#### もう少し、その先へ。')

Blog.create(:days=>'2021/10/12', :title=>'レイアウト調整', :memo=>'> レイアウト調整しました。

```markdown
・ 投稿一覧にタイトルと日付追加
・ ログインフォームの位置
・ ブログ一覧の中央寄せ
・ erb-lintの不要な設定削除
・ erb-lintの設定の見直し
・ erb-lintの消しすぎた設定の戻し
```

#### 今後も少しずつ改良していきます。

_ブログは自分で作る時代。_')

Blog.create(:days=>'2021/10/15', :title=>'PostgreSQLの書籍購入', :memo=>'### Excelと連動しているPostgreSQLの本を購入。

> タイトル：「内部構造から学ぶPostgreSQL　設計・運用計画の鉄則　改訂新版」

```markdown
できれば、にゃそこん２のDB周りもpostgresに変更したいけれど、インデックス作成まわりでつまずくので時間があるときに移行する。
```

#### 近況と記録。
')

Blog.create(:days=>'2021-10-15', :title=>'PostgreSQL', :memo=>'### 考察

> PostgreSQLでWindows環境構築ができた。

```Markdown
・ RubyMineでデバッグをWindows環境のRubyInstaller2でもできる。
・ PostgreSQLでダンプリセットリストアシードコマンドが使える。
・ IDEで書くことができるので書きやすい、治しやすい。
```

※ PostgreSQLにいずれは移行する。
')

Blog.create(:days=>'2021-10-15', :title=>'MySQL', :memo=>'### 懸念

```markdown
・ 環境構築に時間がかかる。
・ Windowsではmysql2が動かない。
・ さくらVPSでMySQLがあるが、PostgreSQLのRails側をマージする予定である。
```

※ しばらくMySQLも残しておく。
')

Blog.create(:days=>'2021-11-26', :title=>'MySQL2', :memo=>'### 達成

```markdown
・ MySQLのコネクタ、mysql2がWindowsで動作できた。wikiに記録してある。
・ ローカル環境で、にゃそこん2を構築できるので反映も楽になった。
・ MySQLとPostgreSQLの環境構築ができるのは良いことである。
・ 2つのDB間、動作もほぼ同じになっている。
```

※ MySQLとPostgreSQLでにゃそこん２を作っていく。
')

Blog.create(:days=>'2021-12-12', :title=>'🎉画像投稿機能追加', :memo=>'### 変更点

```markdown
🎉 blogs側、画像投稿機能追加しました
🎨 全体、絵文字表示可能にしました。
❎ books側、seedデータのstatus=>'0'を解除（未所持をデフォルト）しました。
⭕ 起動時、ログインレイアウトの調整をしました。
```

#### 🍭本日のChangeLogsでした。            
            
')

Blog.create(:days=>'2021-12-13', :title=>'🌠 作業記録', :memo=>'### ChangeLogs

```markdown
# さくらVPS稼働版
# mysql側nyasocom2

⛄ 絵文字表示
🍬 画像投稿機能追加
🎮 DBバックアップ
```

以上です。
')

Blog.create(:days=>'2021-12-31', :title=>'大晦日🌞', :memo=>'
```markdown
# Windows環境

・ ruby3.1.0がでているがnokogiriでrailsを起動できない。依存ライブラリzlibなどでこける。

・ ruby3.0.3を入れ直し。2.7.xを削除。

・ Vimの設定ファイル書き直し。
```
')

Blog.create(:days=>'2022-1-1', :title=>'新年🔔', :memo=>'#### 記録

```markdown
・ コワーキングスペースと弁済金の入金済み
・ ATMは動いていた。
・ Excelに入力完了、あとどれくらいか見られる
```

#### 新年の抱負

```markdown
・ Ruby技術者Goldを取得する
・ Railsエンジニア5basicを取得する

# 挑戦
・ OSS-DB Silverに挑戦する
・ Python3 データ分析に挑戦する

# どちらでも
・ Oracle java bronze 合格を目指す
```

以上
')

Blog.create(:days=>'2022-1-4', :title=>'🍬 新年開始', :memo=>'### 明けましておめでとうございます。今年もよろしくお願いします。🙇

```markdown
・ RubyInstaller2で3.1.0を入れてそれぞれの環境を設置 (にゃそこん2、にゃそこん、zinbei、zinbeijettなど)
・ にゃそこんのRubyを3.1.0にバージョンアップ
・ go_straightの更新
・ configの新規作成
・ install.rb、installer.rbで自動生成確認
```

以上です。
')

# Blog.create(:days=>'', :title=>'', :memo=>'')
