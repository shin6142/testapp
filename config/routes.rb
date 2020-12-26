Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
      }
  resources :posts do
    resources :comments, only: [:create]
  end 
  resources :profiles, only: [:show, :new, :edit, :create, :update]
  root 'home#top'
  get 'home/top'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

