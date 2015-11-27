class AddInseamToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :inseam, :float
  end
end
