class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.float :bust
      t.float :waist
      t.float :hips

      t.timestamps null: false
    end
  end
end
