Rails.application.routes.draw do
  resources :users
  resources :subs do
    resources :posts
  end
  resource :session, only: [:create, :new, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
