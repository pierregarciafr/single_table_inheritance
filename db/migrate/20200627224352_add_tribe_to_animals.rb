class AddTribeToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_reference :animals, :tribe, null: false, foreign_key: true
  end
end
