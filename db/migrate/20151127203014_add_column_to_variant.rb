class AddColumnToVariant < ActiveRecord::Migration
  def change
    add_reference :variants, :measurement, index: true
  end
end
