class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :options
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
