class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.boolean :digital
      t.boolean :cut
      t.string :type

      t.timestamps null: false
    end
  end
end
