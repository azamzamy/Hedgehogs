Rails.application.routes.draw do
  get 'apps/new'

  get 'welcome_page/index'


	resources :apps
	resources :users
	devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome_page#index'
end
