class Product < ApplicationRecord
  # HTTP通信のため追加
  include HTTParty
  base_uri 'localhost:3000'

  # 画像アップローダーの指定
  mount_base64_uploader :image, ImageUploader

  # バリデーション
  validates :image, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true

  def get_data(uri)
    self.class.get(uri).parsed_response
  end

  def post_data(uri, options)
    self.class.post(uri, options)
  end

  def put_data(uri, options)
    self.class.put(uri, options)
  end

  def delete_data(uri)
    self.class.delete(uri)
  end
end
