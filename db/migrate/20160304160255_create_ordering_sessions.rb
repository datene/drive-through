class CreateOrderingSessions < ActiveRecord::Migration
  def change
    create_table :ordering_sessions do |t|
      t.string :buyer
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
