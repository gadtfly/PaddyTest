class AddLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :likeable, polymorphic: true
    end
  end
end
