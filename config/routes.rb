PaddyTest::Application.routes.draw do
  root to: 'home#index'
  resources :cards do
    resources :likes, only: [:create, :destroy]
  end
  resources :decks do
    resources :likes, only: [:create, :destroy]
  end
  resource :cards_decks, only: [:create, :destroy]
end
