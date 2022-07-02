Rails.application.routes.draw do
  #RESTful routes
  devise_for :users
  root 'home#index'
  # get '/users/sign_out', to: 'devise/sessions#destroy', as: 'sign_out'
  get 'home/about'
  get 'home/search'
  post '/home/search' => 'home/search'
  get 'currencies/table'

  get 'currencies/new', to: 'currencies#new', as: 'new'
  post 'currencies/new', to: 'currencies#new', as: 'new_currency'

  get 'currencies', to: 'currencies#index', as: 'currencies'
  #post 'currencies', to: 'currencies#index', as: 'currencies_index'

  post 'currencies/sorted', to: 'currencies#sorted', as: 'currencies_sorted'
  get 'currencies/sorted', to: 'currencies#sorted', as: 'currencies_sort'

  post 'currencies/sorted_descending', to: 'currencies#sorted_descending', as: 'currencies_sorted_descending'
  get 'currencies/sorted_descending', to: 'currencies#sorted_descending', as: 'currencies_sorted_desc'

  get 'currencies/:id/edit', to: 'currencies#edit', as: 'edit_currency'
  get 'currencies/:id', to: 'currencies#show', as: 'currency'
  post 'currencies', to: 'currencies#create' 
  
  patch 'currencies/:id', to: 'currencies#update'
  put 'currencies/:id', to: 'currencies#update'
  delete '/currencies/:id', to: 'currencies#destroy'

  post 'portfolios/new', to: 'portfolios#new', as: 'new_portfolio'
  get 'portfolios', to: 'portfolios#index', as: 'portfolios'
  get 'portfolios/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio'

  patch 'portfolios/:id', to: 'portfolios#update'
  put 'portfolios/:id', to: 'portfolios#update'
  delete '/portfolios/:id', to: 'portfolios#destroy'

  post '/portfolios', to: 'portfolios#create'
end