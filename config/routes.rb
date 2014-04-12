Template::Application.routes.draw do

  devise_for :users
  resources :users

  authenticated :users do
    root to: "pages#in", as: :authenticated_root
  end

  root to: "pages#home"

end
