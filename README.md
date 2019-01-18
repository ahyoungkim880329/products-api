# README

## [課題] Ruby on Railsを使ったAPI作成

- 期間：2019/01/08~11

### 課題内容

- 課題：[RESTfulなAPIアプリケーション](https://docs.google.com/document/d/1-IcZxm6wz0-5nzzYT-xyHVttKKbWtobwHe3hwelrJUg/edit?usp=sharing)


### 進捗

#### 2019.01.08(火)

- 事前準備
  - 課題内容の理解
  - RESTful APIの理解
  - 開発環境の構築

#### 2019.01.09(水)

- Ruby・Ruby on Railsの学習
- 設計：API、テーブル定義
  - [20190109_[課題]products-api設計書](https://docs.google.com/spreadsheets/d/1S-_QRlR_OAG-uDlScVanKypa9G9czYkdYgyO4zHtReU/edit?usp=sharing)

#### 2019.01.10(木)

- API実装・テスト
  - RSpecを利用し、テストコードを作成してから、実装
  - 商品画像を除外した商品情報の登録・検索・変更・削除機能を実装

#### 2019.01.11(金)

- API実装・テスト
  - CarrierWaveを利用し、商品画像をBase64に変換し登録する機能を実装
  - テストコードの追加作成
  - APIドキュメントの作成

#### 2019.01.14(月)

- 画面実装
  - 作成したAPIを叩いて利用する画面の実装

#### 振り返り

- 詰まったところ
  - テストコードの作成
  - APIの呼び出し

---

## [課題] 定期ジョブ機能

- 期間：2019/01/15~18

### 課題内容

- 課題：[定期ジョブ機能](https://docs.google.com/document/d/1kCXnPVg0ChcT2MaG4mMjeEyR-8og3kzCCIRAoZQPjHc/edit?usp=sharing)

### 進捗

#### 2019.01.15(火)

- 課題内容の理解
- 調査

#### 2019.01.16(水)

- 調査
- プロトタイプ実装
- 設計

#### 2019.01.17(木)

- 実装
  - モデル
    - 論理削除機能の追加
    - 集計テーブルの作成
  - ジョブ作成
  - 画面

#### 2019.01.18(金)

- 実装
  - ジョブのスケジューリング
  - エラーのSlack通知機能
  - 検索機能
- 説明資料作成
  - [20190118_[課題]定期ジョブ機能説明資料](https://docs.google.com/presentation/d/1eZq01w569Fuz3eNvotJQEnIskRUgNppRvD1OM3LIoes/edit?usp=sharing)
