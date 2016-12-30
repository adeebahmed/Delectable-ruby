class AddMenuRefToFood < ActiveRecord::Migration[5.0]
  def change
    add_reference :foods, :menuname, foreign_key: true
  end
end
