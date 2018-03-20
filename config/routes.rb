Rails.application.routes.draw do
  resources :drops

  root 'drops#index'
end
