class Card < ActiveRecord::Base
  has_and_belongs_to_many :decks

  attr_accessible :title, :description
end