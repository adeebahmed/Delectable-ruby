class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :foods
      t.float :total
      t.float :surcharge
      t.string :ship
      t.string :billing
      t.string :instructions
      t.string :status

      t.timestamps
    end
  end
end
