json.array!(@clothings) do |clothing|
  json.extract! Clothing, :id, :description, :category, :brand, :color
  json.url clothing_url(Clothing, format: :json)
end
