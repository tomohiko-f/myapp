# Dayz Musiq Productions
私自身が制作した曲のご視聴、またはYoutuber・Instagramerが動画のBGMとしてご使用頂けるMusicWebサービスです。転職活動用のポートフォリオとして制作致しました。

![スクリーンショット 2019-08-27 19 43 34](https://user-images.githubusercontent.com/51371432/63765640-73b7fa80-c904-11e9-8cb3-bea9938b7e52.png)

# リンク
本サイト：[https://www.dayzmusiq.com/](https://www.dayzmusiq.com/)

# 使用技術
* Ruby 2.5.1
* Rails 5.0.7
* MySQL 5.7.27
* Bootstrap4
* AWS
  - EC2
  - ALB
  - DB MySQL
  - route 53
  - Certificate Manager
  - ELB
  - S3
  - VPC
  - VPC Endpoint
  - Cloud9(開発環境)
* Nginx
* Unicorn
* GitHub

# AWSアーキテクチャ
![スクリーンショット 2019-08-27 22 21 16](https://user-images.githubusercontent.com/51371432/63774851-1a0dfb00-c919-11e9-8947-959459b04aef.png) 
  
開発環境であるCloud9からGitHubへpushし、EC2からGithubへアクセスしてデプロイしました。webサーバにはNginx、アプリケーションサーバにはUnicornを使用しています。    　

ダウンロード機能実装のためのmp3データはS3に保存しました。VPCエンドポイントを使用することでプライベートサブネットからのS3接続を可能にしています。また、実際の現場環境を想定して、VPC内のセキュリティーグループやIAMユーザーの設定を詳細に設定されています。  

ドメイン名についてはRoute53にて取得し、ALBでHTTPからHTTPSへのリダイレクトを行い、常時SSL化しています。

# 機能一覧／使用gem
* ログイン機能／device
* 退会機能／device
* ユーザー情報変更機能／device
* Mp3データダウンロード機能
* ユーザーコメント機能(ログイン時)
* ページネーション・無限スクロール／kaminari
* レスポンシブデザイン対応
* YouTube視聴再生

# テストユーザー 
ユーザー名：Test User  
e-mail：test@dayz.com  
password：password  
※観覧用としてお使いください。 

# 今度の追加したい機能
* Twitterなどの外部サービスとの連携によるログイン機能の実装
* S3へ音源のアップロード機能の追加
* メール問い合わせ機能の追加
* いいね機能の追加
* ログインユーザーが自分自身のサイトをカスタマイズし作成できるような機能の追加
* ECサイト化
