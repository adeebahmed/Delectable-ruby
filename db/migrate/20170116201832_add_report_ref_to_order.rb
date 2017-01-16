class AddReportRefToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :report, foreign_key: true
  end
end
