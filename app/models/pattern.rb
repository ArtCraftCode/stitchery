class Pattern < ActiveRecord::Base
  has_many :variants

  def self.TYPES
    [
      'accessory',
      'dress',
      "men's",
      'pants/shorts',
      'skirt',
      'home',
      'swimwear',
      'tops',
      'undergarments',
      'outerwear'
    ]
  end

  def is_garment?
    ['dress', "men's", 'pants/shorts', 'skirt', 'swimwear', 'tops', 'undergarments', 'outerwear'].include?(type)
  end
end
