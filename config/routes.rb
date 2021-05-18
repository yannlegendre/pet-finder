Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'pets', to: "pets#index"
  resources :pets, only: [:index, :show, :new, :create, :destroy]
end
