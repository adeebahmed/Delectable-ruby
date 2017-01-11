class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :foodname
      t.string :category
      t.integer :calories
      t.float :price

      t.timestamps
    end
  end
end
