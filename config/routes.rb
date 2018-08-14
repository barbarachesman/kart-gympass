Rails.application.routes.draw do
  get 'users/index'
  get 'users/import'
  resources :users do
  	collection { post :import}
  end

  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
