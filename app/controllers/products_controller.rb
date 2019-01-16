class ProductsController < ApplicationController
    @@api_uri = '/api/products'

    before_action :encode_image_with_base64, only: [:create, :update]

    # 検索(全件取得)
    def index
      @products = Product.new.get_data(@@api_uri)
    end

    # 検索(取得)
    def show
      @product = Product.new.get_data(get_uri_with_id)
    end

    # 登録画面
    def new
      @product = Product.new
    end

    # 編集画面
    def edit
      @product = Product.find(params[:id])
    end

    # 登録
    def create
      @product = Product.new.post_data(@@api_uri, get_options)
      redirect_to products_path
    end

    # 変更
    def update
      @product = Product.new.put_data(get_uri_with_id, get_options)
      redirect_to products_path
    end

    # 削除
    def destroy
      @product = Product.new.delete_data(get_uri_with_id)
      redirect_to products_path
    end

    private
    def get_uri_with_id
      return @@api_uri + "/#{params[:id]}"
    end

    def encode_image_with_base64
      file = params[:product][:image]
      if file.present?
        params[:product][:image] = "data:" + file.content_type + ";base64," + Base64.encode64(File.read(file.path))
      end
    end

    def get_options
      return options = {
                        :body => params[:product].to_json,
                        :headers => { 'Content-Type' => 'application/json' }
                      }
    end

    def conversion
      flash[:page_title_index] = t(:page_title_index)
      flash[:page_title_create] = t(:page_title_create)
      flash[:page_title_edit] = t(:page_title_edit)
      flash[:product_title] = t(:product_title)
      flash[:product_image] = t(:product_image)
      flash[:before_product_image] = t(:before_product_image)
      flash[:description] = t(:description)
      flash[:price] = t(:price)
      flash[:create] = t(:create)
      flash[:show] = t(:show)
      flash[:edit] = t(:edit)
      flash[:delete] = t(:delete)
      flash[:back] = t(:back)
      flash[:confirm_msg] = t(:confirm_msg)
    end
end
