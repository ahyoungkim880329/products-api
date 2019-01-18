require 'json'

class DailyAggregationsController < ApplicationController
  # 一覧(全件取得・検索)
  def index
    @q = DailyAggregation.ransack(params[:q])
    @daily_aggregations = @q.result(distinct: true)
  end

  # 詳細(取得)
  def show
    @daily_aggregation = DailyAggregation.find(params[:id])

    # 商品情報(ids)を配列に変換
    ids_to_array = JSON.parse(@daily_aggregation["products_ids"])
    @products = Product.with_deleted.where(id: ids_to_array)
  end
end
