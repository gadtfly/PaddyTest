class DecksController < ApplicationController
  respond_to :html, :js

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def create
    @deck = Deck.new(params[:deck])
    @deck.save
    respond_with(@deck)
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(params[:deck])
    respond_with(@deck)
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    respond_with(@deck)
  end
end