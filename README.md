# README

## [課題] Ruby on Railsを使ったAPI作成

- 期限：今週中(2019/01/08~11)

### 課題内容

- 課題：[RESTfulなAPIアプリケーション](https://docs.google.com/document/d/1-IcZxm6wz0-5nzzYT-xyHVttKKbWtobwHe3hwelrJUg/edit?usp=sharing)
- 内容：下記情報を持つ商品データの登録・検索・変更・削除を行う、RESTfulなAPIの設計・実装
  - 商品データ情報
    - 商品画像
    - 商品タイトル(最大100文字)
    - 説明文(最大500文字)
    - 価格
  - レスポンス形式：JSON、内容はお任せ
- 技術：Ruby, Ruby on Rails(フレームワーク)
- 求めるアウトプット
  - 必須：Github上に公開したソースコード、APIの設計資料
    - Team-labのgitアカウントを作成し、個人リポジトリに公開
  - 任意：説明資料、動作確認できるサーバ
- 見るポイント
  - 適切なAPI設計ができるか
  - フレームワークを利用した簡潔なコードが書けるか

### 進捗

#### 2019.01.08(火)

- 事前準備
  - 課題内容の理解
  - RESTful APIの理解
  - 開発環境の構築

#### 2019.01.09(水)

- Ruby・Ruby on Railsの学習
- 設計：API、テーブル定義
  - [20190109_[課題]products-api設計書](https://docs.google.com/spreadsheets/d/1S-_QRlR_OAG-uDlScVanKypa9G9czYkdYgyO4zHtReU/edit?usp=sharing)

#### 2019.01.10(木)

- API実装・テスト
  - RSpecを利用し、テストコードを作成してから、実装
  - 商品画像を除外した商品情報の登録・検索・変更・削除機能を実装

#### 2019.01.11(金)

- API実装・テスト
  - CarrierWaveを利用し、商品画像をBase64に変換し登録する機能を実装
  - テストコードの追加作成
  - APIドキュメントの作成

#### 振り返り

- 詰まったところ
  - テストコードの作成
  - APIの呼び出し

- 残課題
  - 作成したAPIを叩いて利用する画面の実装
