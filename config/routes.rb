Rails.application.routes.draw do
  devise_for :users
  get 'landing/show'
  get 'landing/lorraine'
  get 'landing/bishal'
  get 'landing/bishal2'
  get 'landing/bishal3'
  get 'landing/bishal4'
  get 'landing/bishal5'
  get 'landing/bishal6'
  get 'landing/bishal7'
  get 'landing/bishal8'
  get 'landing/bishal9'

  root to: 'landing#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
