Rails.application.routes.draw do
  resources :tags
  resources :posts
  get 'user/index'
  get 'user/show'
  get 'post/index'
  get 'post/show'
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end