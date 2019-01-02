Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'
  get 'landing/bishal2'
  get 'landing/bishal3'
  

  root to: 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
