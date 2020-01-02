Rails.application.routes.draw do
  #
  #get 'items/new'
  #
  #get 'items/show'
  #
  #get 'items/edit'
  #
  #get 'items/delete'
  #
  #get 'items/update'
  #
  #get 'items/index'

  #get 'sellers/index'
  #
  #get 'sellers/new'
  #
  #get 'sellers/show'
  #
  #get 'sellers/edit'
  #
  #get 'sellers/destroy'

  #root to: 'sellers#index'

  #get 'electronics/index'
  #
  #get 'electronics/new'
  #
  #get 'electronics/edit'
  #
  #get 'electronics/destroy'
  #
  #get 'electronics/show'

  root to: 'sellers#index'
#  edit   '/products/:id' => 'products#edit', as: :edit_products
#
#
  delete '/items/:id' => 'items#destroy', as: :delete_items
  delete '/products/:id' => 'products#destroy', as: :delete_products
  delete '/sellers/:id' => 'sellers#destroy', as: :delete_sellers
  resources :sellers
  resources :products
  resources :items

  #root to: 'products#index'
  #resources :products do
  #  resources :sellers
  #  resources :electronics
  #  end

end
