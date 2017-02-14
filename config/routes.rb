Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create, :index, :show, :edit, :update] do
    resource :password, controller: "clearance/passwords", only: [:create, :edit, :update]
  end
  
  root 'welcome#index'
  resources :surveys
end
