Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[new index create show] do
    resources :bookmarks, only: %i[create]
  end
 resources :bookmarks, only: :destroy
end
