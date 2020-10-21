Rails.application.routes.draw do
  
  
  devise_scope :user do
    root 'homes#top'
  end
  
  devise_for :users ,controllers: {
    sessions:       'users/sessions',
    registrations:  'users/registrations'
  }
  
  
  get '/help' ,   to: 'homes#help'
  get '/about',   to: 'homes#about'
  get '/contact', to: 'homes#contact'
  
  get '/service', to: 'users#service'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
