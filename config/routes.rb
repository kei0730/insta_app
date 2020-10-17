Rails.application.routes.draw do
  
  # get 'users/index'
  
  devise_scope :user do
    root 'homes#top'
  end
  
  devise_for :users ,controllers: {
    sessions:       'users/sessions',
    registrations:  'users/registrations'
  }
  
  #root 'homes#top'
  
  get '/help' ,   to: 'homes#help'
  get '/about',   to: 'homes#about'
  get '/contact', to: 'homes#contact'
  
  resources :users
  resources :microposts, only: [:create, :destroy]
  
end
