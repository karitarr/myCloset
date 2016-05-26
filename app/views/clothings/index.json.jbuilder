json.array!(@clothings) do |clothing|
  json.extract! Clothing, :id, :name
  json.url clothing_url(Clothing, format: :json)
end
