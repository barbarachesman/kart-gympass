Rails.application.routes.draw do
  resources :bubbles
  get 'laps/index'
  get 'laps/import'
  resources :laps do
  	collection { post :import}
  end

  root to: "laps#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
