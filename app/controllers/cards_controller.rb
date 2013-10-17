class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def edit
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.new(params[:card])
    @card.save
    redirect_to @card
  end

  def update
    @card = Card.find(params[:id])
    @card.update_attributes(params[:card])
    redirect_to @card
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_path
  end
end