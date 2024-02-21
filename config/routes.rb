Rails.application.routes.draw do
  devise_for :users
  root 'pics#index'
  resources :pics do 
    resources :likes, only: [:create, :destroy]
    delete 'custom_delete', on: :member
  end
end
