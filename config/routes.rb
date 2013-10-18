PaddyTest::Application.routes.draw do
  root to: 'home#index'
  resources :cards
  resources :decks
  resource :cards_decks, only: [:create, :destroy]
end
