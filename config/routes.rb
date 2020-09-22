Rails.application.routes.draw do
  resources :activities, only: [:index, :show, :new, :edit, :create]
  resources :campers, only: [:index, :show, :new, :edit, :create]
  resources :signups, only: [:index, :show, :new, :edit, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
