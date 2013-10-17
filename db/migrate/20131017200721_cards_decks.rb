class CardsDecks < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text   :description
    end

    create_table :decks do |t|
      t.string :title
    end

    create_table :cards_decks, id: false do |t|
      t.belongs_to :card
      t.belongs_to :deck
    end
  end
end
