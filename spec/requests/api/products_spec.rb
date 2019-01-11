require 'rails_helper'

RSpec.describe 'Products API', type: :request do
  # テストデータの初期化
  let!(:products) { create_list(:product, 3) }
  let(:product_id) { products.first.id }

  # 検索(全件取得)
  describe 'GET /api/products' do
    # エンドポイントにアクセス
    before { get '/api/products' }

    it '商品情報の一覧を表示する', autodoc: true do
      # ステータスコードの確認
      expect(response).to have_http_status(200)

      # JSONの確認
      expect(json).not_to be_empty
      expect(json.size).to eq(Product.count)
    end
  end

  # 検索(取得)
  describe 'GET /api/products/:id' do
    before { get "/api/products/#{product_id}" }

    context '[正常系] レコードが存在する時' do
      it '特定の商品情報を表示する', autodoc: true do
        expect(response).to have_http_status(200)

        expect(json).not_to be_empty
        expect(json['id']).to eq(product_id)
      end
    end

    context '[異常系] レコードが存在しない時' do
      let(:product_id) { 100 }

      it 'ステータスコードの404を返す' do
        expect(response).to have_http_status(404)
      end

      it '「not found」のメッセージを返す' do
        expect(response.body).to match(/Couldn't find Product/)
      end
    end
  end

  # 登録
  describe 'POST /api/products' do
    let(:valid_attributes) { { image: Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test_image.jpg'), 'image/jpeg'), title: 'Chocolate', description: 'Stress Relief', price: 500 } }

    context '[正常系] リクエストが有効な時' do
      it '商品情報を1つ登録する', autodoc: true do
        # 商品情報数が1つ増えることを確認
        expect {
          post '/api/products', params: valid_attributes
        }.to change { Product.count }.by(1)

        expect(response).to have_http_status(201)

        expect(json['title']).to eq(valid_attributes[:title])
      end
    end

    context '[異常系] リクエストが無効な時' do
      before { post '/api/products', params: { title: 'Coffee' } }

      it 'ステータスコードの422を返す' do
        expect(response).to have_http_status(422)
      end

      it '「バリデーション失敗」のメッセージを返す' do
        expect(response.body).to match(/Validation failed:/)
      end
    end
  end

  # 変更
  describe 'PUT /api/products/:id' do
    let(:valid_attributes) { { title: 'Coffee' } }

    context '[正常系] レコードが存在する時' do
      before { put "/api/products/#{product_id}", params: valid_attributes }

      it '特定の商品情報を更新する', autodoc: true do
        expect(response).to have_http_status(204)

        expect(response.body).to be_empty
      end
    end
  end

  # 削除
  describe 'DELETE /api/products/:id' do
    before { @oroduct = FactoryBot.create(:product) }

    it '特定の商品情報を削除する', autodoc: true do
      # 商品情報数が1つ減ることを確認
      expect {
        delete "/api/products/#{product_id}"
      }.to change { Product.count }.by(-1)

      expect(response).to have_http_status(204)
    end
  end

end
