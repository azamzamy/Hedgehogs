Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :apps
  resources :users


  get 'signup/show'
  get 'signup/login'
  post 'signup' => 'signup#signup'
    get 'signup'  => 'users#new'
      get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'users/edit'
  get 'users/edit/:id', to: 'users#edit'
  post 'users/edit/:id', to: 'users#edit'
  patch 'users/edit/:id', to:'users#edit'
  get 'users/edit'
  get 'users/edit/:id', to: 'users#edit'
  post 'users/edit/:id', to: 'users#edit'
  patch 'users/edit/:id', to:'users#edit'
  get 'users/update'
  get 'users/update/:id', to: 'users#update'
  post 'users/update/:id', to: 'users#update'
  patch 'users/update/:id', to:'users#update'  

root 'welcome#index'

end

