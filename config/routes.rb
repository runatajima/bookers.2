Rails.application.routes.draw do
  root  to: 'homes#top'
  get 'home/about' => "homes#about"
  devise_for :users
  resources :users, only: [ :create, :index, :show, :update, :edit]
  resources :books, only: [ :create, :index, :show, :destroy, :update, :edit]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

