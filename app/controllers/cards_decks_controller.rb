class CardsDecksController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
    @deck.cards << @card
  end

  def destroy
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
    @deck.cards.delete(@card)
  end
end