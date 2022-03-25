 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root 'welcome#index'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  delete 'log_out', to: 'sessions#destroy'
  
  get 'about', to: 'about#index'
  get 'contact', to: 'contact#index'
  get 'calendar', to: 'calendar#index'
end
