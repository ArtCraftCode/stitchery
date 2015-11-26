json.array!(@variants) do |variant|
  json.extract! variant, :id, :size, :pattern_id, :44, :54, :60, :bust, :waist, :hips
  json.url variant_url(variant, format: :json)
end
