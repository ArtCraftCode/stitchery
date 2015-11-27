class Variant < ActiveRecord::Base
  belongs_to :pattern
  belongs_to :measurement
  belongs_to :size

  after_save :process_size

  private 
  def process_size
    return if @inside_callback
    @inside_callback = true
    if self.size
      self.update_attributes({
        bust: size.bust,
        waist: size.waist,
        hips: size.hips
      })
    end
  end
end
