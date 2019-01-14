module Api
  class ProductsController < ApplicationController
    # CSRFの回避
    skip_before_action :verify_authenticity_token

    before_action :set_product, only: [:show, :update, :destroy]

    # 検索(全件取得)
    # GET /api/products
    def index
      @products = Product.all
      json_response(@products)
    end

    # 検索(取得)
    # GET /api/products/:id
    def show
      json_response(@product)
    end

    # 登録
    # POST /api/products
    def create
      @product = Product.create!(product_params)
      json_response(@product, :created)
    end

    # 変更
    # PUT /api/products/:id
    def update
      @product.update(product_params)
      head :no_content
    end

    # 削除
    # DELETE /api/products/:id
    def destroy
      @product.destroy
      head :no_content
    end

    private
      def product_params
        params.permit(:image, :title, :description, :price)
      end

      def set_product
        @product = Product.find(params[:id])
      end
  end
end
