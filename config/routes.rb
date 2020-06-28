Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals
  resources :lions, controller: 'animals', type: 'Lion'
  resources :meerkats, controller: 'animals', type: 'Meerkat'
  resources :wildboars, controller: 'animals', type: 'Wildboar'
  root 'animals#index'
end
