json.array!(@outfits) do |outfit|
  json.extract! outfit, :id, :event, :notes, :worn_on, clothing_id
  json.url outfit_url(outfit, format: :json)
end
