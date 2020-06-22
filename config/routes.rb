# frozen_string_literal: true

Rails.application.routes.draw do
  resources :board_items
  namespace :api do
    namespace :v1 do
      resources :boards
      resources :items
      resources :board_items
    end
  end
  
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
