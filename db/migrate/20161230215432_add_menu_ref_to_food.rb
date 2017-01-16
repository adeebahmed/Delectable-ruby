class AddMenuRefToFood < ActiveRecord::Migration[5.0]
  def change
    add_reference :foods, :menu, foreign_key: true
  end
end
  