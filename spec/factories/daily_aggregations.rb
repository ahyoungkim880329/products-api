# テストデータ
FactoryBot.define do
  factory :daily_aggregation do
    date { Faker::Date.between(10.days.ago, Date.today) }
    sort { "作成" }
    products_count { Faker::Number.number(2) }
    products_ids { [1, 2, 3] }
  end
end
