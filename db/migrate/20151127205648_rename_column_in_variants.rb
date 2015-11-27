class RenameColumnInVariants < ActiveRecord::Migration
  def change
    rename_column :variants, :size, :label
  end
end
