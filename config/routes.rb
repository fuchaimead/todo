Rails.application.routes.draw do
  get 'lists/edit'

  root 'lists#index'
 resources :lists

end
