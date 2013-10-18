class Deck < ActiveRecord::Base
  has_and_belongs_to_many :cards
  has_many :likes, as: :likeable

  attr_accessible :title
end