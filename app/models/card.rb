class Card < ActiveRecord::Base
  has_and_belongs_to_many :decks
  has_many :likes, as: :likeable

  attr_accessible :title, :description
end