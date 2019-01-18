require 'rails_helper'

RSpec.describe DailyAggregationsController, type: :controller do
  # 一覧(全件取得)
  describe "GET index" do
    before { get 'index' }

    it '集計結果の一覧を表示する' do
      expect(response).to render_template(:index)
    end
  end

  # 詳細(取得)
  describe "GET show" do
    before {
      @daily_aggregation = create(:daily_aggregation)
      get 'show', params: { id: @daily_aggregation.id }
    }

    it '特定の集計結果を表示する' do
      expect(response).to render_template(:show)
    end
  end
end
