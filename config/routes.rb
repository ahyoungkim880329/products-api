Rails.application.routes.draw do
  # 定期ジョブの管理画面のため追加
  require 'sidekiq/web'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web, at: "/sidekiq"

  namespace :api do
    resources :products
  end

  resources :products

  resources :daily_aggregations

  root to: 'products#index'
end
