class CardsDecksController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
    @deck.cards << @card
    redirect_to :root
  end

  def destroy
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:card_id])
    @deck.cards.delete(@card)
    redirect_to :root
  end
end