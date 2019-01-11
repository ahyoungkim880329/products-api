# テストデータ
FactoryBot.define do
  factory :product do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test_image.jpg'), 'image/jpeg') }
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    price { Faker::Number.number(4) }
  end
end
