class AddPatternFields < ActiveRecord::Migration
  def change
    add_column :patterns, :notions, :string
    add_column :patterns, :fabrics, :string
  end
end
