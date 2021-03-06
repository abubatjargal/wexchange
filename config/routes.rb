Rails.application.routes.draw do
  get 'home/show'

  root 'home#show'

  controller :home do
    post '/navigation/update', to: 'home#update_navigation'
  end

  controller :dashboard do
    get '/swap_marker', to: 'dashboard#swap_marker'
    get '/dashboard', to: 'dashboard#show'
    get '/update', to: 'dashboard#update_progress_tracker'
    get '/update_marker', to: 'dashboard#update_marker'
    post '/notifications/update', to: 'dashboard#refresh_notifications'
    post '/requests/update', to: 'dashboard#refresh_requests'
  end

  controller :users do
    patch    '/profile/addPic',         to: 'users#update'
    get     '/signup',                  to: 'users#new'
    get     '/',                 to: 'users#show'
    post    '/profile',                 to: 'users#update'
    post    '/delete',                 to: 'users#destroy'
  end

  controller :sessions do
    get     '/login',                   to: 'sessions#new'
    post    '/login',                   to: 'sessions#create'
    delete  '/logout',                  to: 'sessions#destroy'
    delete  '/profile',                  to: 'sessions#destroy'
  end

  controller :notifications do
    post    '/notifications/mark_as_read', to: 'notifications#mark_as_read'
    post    '/notifications/mark_all_as_read', to: 'notifications#mark_all_as_read'
  end

  controller :settings do
    get     '/profile/edit',            to: 'settings#edit_user'
    get     '/settings',                to: 'settings#index'
    get     '/settings/profile',        to: 'settings#edit_user'
    get     '/settings/advanced',       to: 'settings#edit_advanced'
  end

  controller :portfolios do
    get     '/addPhoto',             to: 'portfolios#addPhoto'
    post    '/addPhoto' ,            to: 'portfolios#upload_images'
    post    '/portfolios',           to: 'portfolios#create'
    get     '/portfolios/edit',      to: 'portfolios#edit'
    delete  '/portfolios/delete',     to: 'portfolios#delete'
  end

  controller :transactions do
    get      '/transactions',         to: 'transactions#index'
    get      '/transactions',         to: 'transactions#new'
    post     '/transactions/create',  to: 'transactions#create'
  end

  controller :discover do
    get     '/discover',                to: 'discover#show'
  end

  controller :requests do
    get '/requests',   to: 'requests#index'
  end

  controller :chats do
    get '/chats', to: 'chats#index'
    post '/chats/refresh', to: 'chats#refresh'
  end

  controller :messages do
    post '/messages/create', to: 'messages#create'
  end

  resources :notifications do
    collection do
      post :mark_as_read
    end
  end

  resources :charges
  resources :transactions
  resources :portfolios
  resources :photos

  resources :chats, only: [:create] do
    resources :messages, only: [:create]
  end
  resources :tags, only: [:index, :show]

    resources :users do
      get :autocomplete
    end

end
