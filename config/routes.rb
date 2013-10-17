PaddyTest::Application.routes.draw do
  resources :cards
  resources :decks
  resources :cards_decks, only: [:create, :destroy]

  root to: 'home#index'
end
