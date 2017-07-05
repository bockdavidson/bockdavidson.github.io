Rails.application.routes.draw do

  get 'sessions/new'

 # get 'welcome/index'
  
  get 'vendors/index'
  
  devise_for :users, controllers: { registrations: 'registrations' }
  
  as :user do
  get '/new_account', to: 'registrations#new'
end
  
  resources :vendors do
    resources :fotos
  end
  
  resources :inventories do
    resources :photos
  end
  
#  root 'welcome#index'
  root 'vendors#index'
  
  #root 'inventories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
