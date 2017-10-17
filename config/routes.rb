Rails.application.routes.draw do

  get 'signup/main'

  get 'login/main'

  get '/signup', to: 'signup#main'

  get '/', to: 'home#home'

  root 'home#home'

  get '/notifications', to: 'notifications#notifications'

  get '/profile', to: 'users#profile'
  get '/profile/edit', to: 'settings#edit_user'
  get '/profile/request', to: 'requests#requests'

  get '/discover', to: 'discover#main'

  get '/login', to: 'login#main'

  get '/settings', to: 'settings#index'
  get '/settings/profile', to: 'settings#edit_user'
  get '/settings/billing', to: 'settings#edit_billing'
  get '/settings/advanced', to: 'settings#edit_advanced'
  get '/settings/notifications', to: 'settings#edit_notifications'

  resources :charges
  resources :users
end
