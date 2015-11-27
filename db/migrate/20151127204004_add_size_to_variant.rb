class AddSizeToVariant < ActiveRecord::Migration
  def change
    add_reference :variants, :size, index: true, foreign_key: true
  end
end
