class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :firstname
      t.string :lastname
      t.float :surcharge

      t.timestamps
    end
  end
end
