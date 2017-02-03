Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  get 'surveys/index'

  get 'surveys/show'

  get 'surveys/new'

  get 'surveys/edit'

end
