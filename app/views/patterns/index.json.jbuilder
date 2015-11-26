json.array!(@patterns) do |pattern|
  json.extract! pattern, :id, :name, :digital, :cut, :type
  json.url pattern_url(pattern, format: :json)
end
