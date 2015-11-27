class Variant < ActiveRecord::Base
  belongs_to :pattern
  belongs_to :measurement
end
