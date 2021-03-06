Rails.application.routes.draw do
  resources :articles
  resources :cocktails, only: [ :index, :show, :new, :create, :delete ] do
    resources :doses, only: [ :index, :show, :new, :create ]
    end
  resources :doses, only: [ :destroy ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
