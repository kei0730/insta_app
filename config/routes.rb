Rails.application.routes.draw do
  
  devise_for :users ,controllers: {
    sessions:       'users/sessions',
    registrations:  'users/registrations'
  }
  
  root 'homes#top'
  
  get '/help' ,   to: 'homes#help'
  get '/about',   to: 'homes#about'
  get '/contact', to: 'homes#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
