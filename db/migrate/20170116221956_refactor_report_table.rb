class RefactorReportTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :reports, :dailytotal, :total
    rename_column :reports, :dailysurcharge, :surcharge
  end
end
