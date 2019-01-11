class Product < ApplicationRecord
  # 画像アップローダーの指定
  mount_base64_uploader :image, ImageUploader

  # バリデーション
  validates :image, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true
end
