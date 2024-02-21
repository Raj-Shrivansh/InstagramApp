Rails.application.routes.draw do
  devise_for :users
  root 'pics#index'
  resources :likes, only: [:create, :destroy]
  resources :pics do 
    delete 'custom_delete', on: :member
  end
end
