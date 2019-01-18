require 'rails_helper'

RSpec.describe DailyAggregation, type: :model do
  # バリデーションテスト
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:sort) }
  it { should validate_presence_of(:products_count) }
  it { should validate_presence_of(:products_ids) }
end
