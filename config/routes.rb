Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  get 'blog', to: 'posts#index', as: :posts
  get 'blog/:slug', to: 'posts#show', as: :post
  get '/insiti/franchise/:slug' => redirect('https://www.insiti.com/franchise/%{slug}'), as: :insiti_profile
  get '/insiti/franchises' => redirect('https://www.insiti.com/franchises'), as: :insiti_profiles
  root to: 'landing#index'
end
