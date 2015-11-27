json.array!(@sizes) do |size|
  json.extract! size, :id, :name, :bust, :waist, :hips
  json.url size_url(size, format: :json)
end
