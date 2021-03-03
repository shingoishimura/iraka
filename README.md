# README


## アプリケーション名
石村勇二公式ホームページ兼公演登録アプリ


## アプリケーション概要　
公演予定内容を登録し一覧表示します


# URL
本アドレス　http://35.72.140.27/
サブアドレス https://iraka.herokuapp.com/

※予期せぬエラー等で本アドレスが表示されない場合はサブアドレスをお試し下さい。尚、表示までに少し時間がかかります。ご了承下さい。

# SCREEN SHOTS

![irakascreen1](https://user-images.githubusercontent.com/76483672/109883508-dbe85900-7cbe-11eb-9988-aa2610a4b3de.jpg)

![irakascreen1_pc](https://user-images.githubusercontent.com/76483672/109883500-da1e9580-7cbe-11eb-961a-19c63eefedd1.jpg)

![irakascreen2](https://user-images.githubusercontent.com/76483672/109883493-d854d200-7cbe-11eb-9592-ecedf5249e63.jpg)

![irakascreen3](https://user-images.githubusercontent.com/76483672/109883490-d723a500-7cbe-11eb-926c-3e94df401f1c.jpg)

![irakascreen_ticket_new](https://user-images.githubusercontent.com/76483672/109883476-d3901e00-7cbe-11eb-870a-6bb411f67d81.jpg)

## 利用方法
ページフッター左下の「甍」ロゴをクリックし、ユーザー名とパスワードを入力すると予定公演内容入力フォームへ移動します。画像を選択、公演名を入力、公演情報を入力後に【公演を登録する】ボタンを押すと、トップページの「公演情報」に自動で出力されます。


## 目指した課題解決
自分の父の活動の広報と、HTMLが分からない６５歳の父が、自分がいなくても内容を更新出来るようにしました。


## 洗い出した要件

| 優先順位<br>（高：3、中：2、低：1） | 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり（所要時間） |
|-|-|-|-|-|-|
| 3 | 公演登録 | HTMLが分からない人でもホームページを<br>更新出来るようにしておく必要があるためです。 | HTMLでの編集ではなく、決められた入力フォームに記入することで、<br>一定の場所に投稿した内容が表示されるます。<br>現時点では写真、公演名、公演情報の３つとしています。<br>（後日チケット購入機能実装時に別途価格、日付、時間の入力フォームを作成します） | 登録ページに入力フォームがあるので、<br>画像、公演名、公演情報をユーザーに記入してもらい、<br>そのまま【公演情報を投稿】ボタンを押してもらうことで、<br>トップページに戻ると同時に、登録した情報が、登録順に表示されます。 | １０時間 |
| 3 | Basic認証 | オーナーが権限を与えた人間以外による、<br>改竄を防ぐ為です。 | HTMLに標準搭載されているBASIC認証という簡易的な<br>ユーザーログイン機能を実装しました。<br>権限を与えた人間にだけユーザー名とパスワードを伝え、<br>投稿出来るようにしました。 | 登録ページに行くためのボタンがフッター左に【甍】のロゴで置いてあるので、<br>クリックすると、登録ページに移動します。<br>その際、ポップアップでユーザー名とパスワードを求められるので、<br>入力すると登録ページを利用できます。 | １時間 |
| 1 | 画像拡大表示 | 今回対象になった利用者（閲覧者も含める）の平均年齢を考えた時、<br>サムネイル表示だけでは老眼で見えない方も多いと思い、実装します。 | lightbox2という機能を持ち入りました。投稿された画像をクリックをすると<br>別ウインドウが中央に開き、画像が拡大表示されます。 | 登録した公演の画像をクリックすると、<br><br>拡大表示された画像が、画面中央に表示されます。 | １時間 |
| 3 | レスポンシブデザイン | 昨今は高齢者でもスマートフォンでの利用者が多いと予測。<br>なのでスマートフォンでも違和感なく見れるように設定します。 | パソコンとスマートフォンの２サイズを想定して作成しました。<br>公演情報の場所をパソコン表示の際は写真と文章を左右で表示、<br>スマートフォンの時は縦一列で表示しました。 | 表示ウインドウを縮めたり、スマートフォンで閲覧すると、<br>それに合った表示がされます。 | ６時間 |
| 2 | 公演編集機能 | 既に作成した公演内容を編集出来るようにします。 | 決められた入力フォームに沿って上書きすることで、<br>既に登録した公演内容を編集出来るようにします。 | 公演登録ページに別途登録済み公演情報一覧を設置し<br>（別途ページを作成でも良いです）、<br>それぞれの隣に配置した編集ボタンを押すと、<br>対応する公演が削除されます。（ボタンでの選択式でもOK） | ６時間 |
| 2 | 公演削除機能 | 既に作成した公演内容を削除出来るようにします。 | 編集ページに削除機能のついたボタンを設置し、<br>既に登録した公演内容を一覧から削除出来るようにします。 | 上記編集ボタンの横に削除ボタンを作成し、対応する公演が削除されます。 | ３時間 |
| 1 | チケット購入機能 | 公演ごとのチケットを購入WEB上で購入してもらえるようにします。 | 公演一覧表示の画像と文章にリンクを貼り、購入ページへ移動しするように設定します。<br>JavaScriptとPay.jpを使い、<br>購入者情報の保存とWEB上でチケットの購入を完結出来るように実装します。 | 購入ページに移動したら、カード番号、有効期限、セキュリティ番号を入力し、<br>その後購入者名、購入枚数、電話番号、を記入してもらい、<br>決済となります。その際、公演IDもデータベースに取得します。 | １０時間 |

## 今後実装予定の機能
編集機能、削除機能、購入機能


## データベース設計　


## tickets テーブル

| Column           | Type        | Options                           |
| --------         | ------      | -----------                       |
| program          | string      | null: false                       |
| text             | text        |                                   |
| venue            | string      | null: false                       |
| date             | string      | null: false                       | 
| time             | string      | null: false                       |
| price            | integer     | null: false                       |
| remaining        | integer     | null: false                       |


### Association 

- has_many    :order

## orders テーブル

| Column           | Type        | Options                           |
| --------         | ------      | -----------                       |
| name             | string      | null: false                       |
| name_kana        | string      | null: false                       | 
| ticket_id        | references  | null: false,foreign_key: true     |
| tel_num          | integer     | null: false                       |
| sheet            | integer     | null: false                       |

### Association

- belongs_to :ticket 

# ER図

<img width="716" alt="ER3" src="https://user-images.githubusercontent.com/76483672/108445093-215c5d80-729f-11eb-8ef5-e8e65638f85e.png">



## ローカルでの起動方法
事前に用意していただく起動環境　MacOS - Ruby 2.6.5 - Ruby on Rails 6.0.0 - JavaScript - SQL - Git - GitHub 


ターミナル操作

```ターミナル

% cd iraka

```

```ターミナル

% bundle install

```

```ターミナル

% brew install nodejs

```

```ターミナル

% brew install yarn

```

```ターミナル

% rails db:create

```

```ターミナル

% rails db:migrate

```

```ターミナル

% rails s

```

以上
