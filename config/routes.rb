Rails.application.routes.draw do

  #Resources for our route
  resources :hero_powers,only:[:create]
  resources :heroes,only:[:show,:index,]
  resources :powers,only:[:show, :index, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
