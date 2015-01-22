Rails.application.routes.draw do
  root 'pages#index'

  resources :videos do
    resources :comments, :only => [:create, :show]
  end

  resources :sounds do
    resources :comments, :only => [:create, :show]
  end

  resources :comments, :only => [:destroy, :show]
end
