class CardsDecksController < ApplicationController
  respond_to :html, :js

  def create
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
    @deck.cards << @card
    respond_with(@card, @deck)
  end

  def destroy
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
    @deck.cards.delete(@card)
    respond_with(@card, @deck)
  end
end