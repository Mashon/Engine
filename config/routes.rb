Mj::Engine.routes.draw do
  resources :announcements do
    resources :comments
  end
  root to: 'announcements#index'
end
