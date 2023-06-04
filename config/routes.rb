Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  unauthenticated do
    root 'categories#splash', as: :unauthenticated_root
  end

  resources :categories, only: %i[index new show create destroy] do
    resources :purchases, only: %i[index new create]
  end
end
