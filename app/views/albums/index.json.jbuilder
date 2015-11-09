json.array!(@albums) do |album|
  json.extract! album, :user_id, :photo_id, :name
  json.url album_url(album, format: :json)
end
