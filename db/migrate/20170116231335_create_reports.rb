class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.float :total
      t.float :surcharge
      t.string :status

      t.timestamps
    end
  end
end
