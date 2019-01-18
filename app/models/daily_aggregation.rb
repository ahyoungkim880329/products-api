class DailyAggregation < ApplicationRecord
  # バリデーション
  validates :date, presence: true
  validates :sort, presence: true
  validates :products_count, presence: true
  validates :products_ids, presence: true
end
