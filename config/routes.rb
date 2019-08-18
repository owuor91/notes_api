Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes do
        resources :comments
      end
      get 'add', to: 'notes#add'
      get 'notes/:id/flipnote', to: 'notes#flipnote'
    end
  end
end
