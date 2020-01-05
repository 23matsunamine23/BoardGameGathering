# README
## BoardGameGathering
BoardGameGatheringは、ボードゲームファンが集う情報共有サイトです。転職活動用のポートフォリオとして作成致しました。

本番環境
http://52.192.68.43/

<!-- ログイン画面からテストユーザーでログインが可能です。 -->

## 機能一覧、使用gemなど
- ユーザー登録、ログイン機能（device）
- ユーザー間でのフォロー、フォロワー機能
- ツイート投稿機能(CRUD)
- ツイート画像投稿機能(carrierwave)
- いいね機能
- ツイートへのコメント機能
- ツイート一覧表示の際などのページネーション機能(kaminari)
<!-- 名前、ツイートの検索機能(and検索) -->
<!-- レスポンシブデザイン（スマホサイズに対応） -->
## 使用技術
- Ruby 2.6.3
- Ruby on Rails 5.2.3
- MYSQL
- SCSS,Bootstrap
<!-- - Docker -->
- GitHub,Git
<!-- - Rspec -->
- AWS
  - EC2
<!-- ECS
ECR
RDS for MySQL
ALB
Route53 -->
  - S3
<!-- ACM
circleci -->
## テスト
- Rspec
  - 単体テスト（モデル）
  - 統合テスト（systemspec）
## circleci
masterブランチへプッシュすると、 circleciで自動ビルド・自動テスト・自動デプロイ、タスク定義の更新とmigrationを行います。