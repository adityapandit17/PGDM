Rails.application.routes.draw do
  resources :no_dues
  resources :subjects
  resources :academic_sessions
  get 'welcome/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
