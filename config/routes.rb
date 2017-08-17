Rails.application.routes.draw do
  resources :mifs
  root 'mifs#index', as: 'mifs/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
