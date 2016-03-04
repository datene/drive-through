class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :url
      t.string :address
      t.string :phone_number
      t.integer :rating
      t.references :ordering_session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
