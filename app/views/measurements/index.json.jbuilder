json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :neck_to_waist, :nape_to_waist, :armpit_to_waist, :upper_back, :shoulder_rise, :waist, :bust, :hips
  json.url measurement_url(measurement, format: :json)
end
