Rails.application.routes.draw do
  root 'surveys#new'
  resources :surveys
end
