class Size < ActiveRecord::Base
  has_many :variants

  def label
    "#{name} - #{bust}/#{waist}/#{hips}"
  end

  def sizes
    "#{bust}/#{waist}/#{hips}"
  end
end
