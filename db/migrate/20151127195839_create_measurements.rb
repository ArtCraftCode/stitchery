class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :neck_to_waist
      t.float :nape_to_waist
      t.float :armpit_to_waist
      t.float :upper_back
      t.float :shoulder_rise
      t.float :waist
      t.float :bust
      t.float :hips
      t.string :name

      t.timestamps null: false
    end
  end
end
