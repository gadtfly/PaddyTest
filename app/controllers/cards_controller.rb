class CardsController < ApplicationController
  respond_to :html, :js

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
    
    respond_with(@card) do |f|
      f.html { redirect_to @card }
    end
  end

  def update
    @card = Card.find(params[:id])
    @card.update_attributes(params[:card])
    
    respond_with(@card) do |f|
      f.html { redirect_to @card }
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_with(@card) do |f|
      f.html { redirect_to :root }
    end
  end
end