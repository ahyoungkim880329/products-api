require 'rails_helper'

RSpec.describe Product, type: :model do
  # バリデーションテスト
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:title) }
  it { should validate_length_of(:title).is_at_most(100) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:description).is_at_most(500) }
  it { should validate_presence_of(:price) }
end
