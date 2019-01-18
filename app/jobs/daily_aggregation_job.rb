require 'sidekiq-scheduler'

class DailyAggregationJob
  include Sidekiq::Worker

  def perform(*args)
    # 集計対象の条件(前日分)
    target_condition = (Time.now.midnight - 1.day)..Time.now.midnight
    target_date = Date.today - 1

    # 作成商品情報の集計・保存(削除された件数は除外)
    created_products = Product.where(created_at: target_condition)
    DailyAggregation.create!(
      date: target_date,
      sort: "作成",
      products_count: created_products.count,
      products_ids: created_products.ids
    )

    # 削除商品情報の集計・保存
    deleted_products = Product.only_deleted.where(deleted_at: target_condition)
    DailyAggregation.create!(
      date: target_date,
      sort: "削除",
      products_count: deleted_products.count,
      products_ids: deleted_products.ids
    )
  end
end
