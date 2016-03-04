class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :member
      t.references :ordering_session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
