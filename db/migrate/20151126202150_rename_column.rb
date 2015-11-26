class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :patterns, :type, :category
  end
end
