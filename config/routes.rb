Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :notes
      get 'add', to: 'notes#add'
      get 'notes/:id/flipnote', to: 'notes#flipnote'
    end

    namespace :v2 do
      post 'login', to: 'authentication#authenticate'
      post 'register', to: 'users#create'

      resources :users do
        resources :notes do
          get 'add', to: 'notes#add'
          get 'notes/:id/flipnote', to: 'notes#flipnote'
        end
      end
    end

  end
end
