json.array!(@outfits) do |outfit|
  json.extract! outfit, :id, :name, :content, Clothing_id
  json.url outfit_url(outfit, format: :json)
end
