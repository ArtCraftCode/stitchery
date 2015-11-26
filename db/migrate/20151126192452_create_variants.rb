class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :size
      t.references :pattern, index: true, foreign_key: true
      t.float :yardage_44
      t.float :yardage_54
      t.float :yardage_60
      t.float :bust
      t.float :waist
      t.float :hips

      t.timestamps null: false
    end
  end
end
