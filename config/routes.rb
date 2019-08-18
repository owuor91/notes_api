Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :notes


      get 'add', to: 'notes#add'
      get 'notes/:id/flipnote', to: 'notes#flipnote'
      post 'login', to: 'authentication#authenticate'
      post 'register', to: 'users#create'
    end

    namespace :v2 do
      resources :users, :notes
      get 'add', to: 'notes#add'
      get 'notes/:id/flipnote', to: 'notes#flipnote'
      post 'login', to: 'authentication#authenticate'
      post 'register', to: 'users#create'
    end

  end
end
