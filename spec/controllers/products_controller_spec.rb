require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  # 検索(全件取得)
  describe "GET index" do
    before { get 'index' }

    it '商品情報の一覧を表示する' do
      expect(response).to have_http_status(200)
    end
  end

  # 検索(取得)
  describe "GET show" do
    before {
      @product = create(:product)
      get 'show', params: { id: @product.id }
    }

    it '特定の商品情報を表示する' do
      expect(response).to have_http_status(200)
    end
  end

  # 登録画面
  describe "GET new" do
    before { get 'new' }

    it '登録画面を表示する' do
      expect(response).to have_http_status(200)
    end
  end

  # 変更画面
  describe "GET edit" do
    before {
      @product = create(:product)
      get 'edit', params: { id: @product.id }
    }

    it '変更画面を表示する' do
      expect(response).to have_http_status(200)
    end
  end

  # 登録
  describe "POST create" do
    before { @product = attributes_for(:product) }

    it '商品情報を1つ登録する' do
      expect(response).to have_http_status(200)
    end
  end

  # 変更
  describe "PUT update" do
    before { @product = create(:product) }

    it '特定の商品情報を更新する' do
      expect(response).to have_http_status(200)
    end
  end

  # 削除
  describe "DELTE destroy" do
    before { @product = create(:product) }

    it '特定の商品情報を削除する' do
      expect(response).to have_http_status(200)
    end
  end

end
