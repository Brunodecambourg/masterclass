Rails.application.routes.draw do
  devise_for :users
  get 'landing/show'
  get 'landing/lorraine'
  get 'landing/bishal'
  get 'landing/bishal2'

  root to: 'landing#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
