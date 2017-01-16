class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.float :dailytotal
      t.float :dailysurcharge
      t.string :status

      t.timestamps
    end
  end
end
