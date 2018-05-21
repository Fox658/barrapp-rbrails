Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  #root to: 'rooms#show'
  get 'rooms/show'
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
