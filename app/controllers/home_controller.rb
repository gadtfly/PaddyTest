class HomeController < ApplicationController
  def index
    @cards = Card.all
    @decks = Deck.all
  end
end
