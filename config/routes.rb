Rails.application.routes.draw do
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shops
  resources :news
  resources :opinions
  resources :foods

  get 'about' => 'opinions#about'
  get 'beginner' => 'opinions#beginner'
  root :to => 'shops#index'
end
