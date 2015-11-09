json.array!(@photos) do |photo|
  json.extract! photo, :name, :photo_image
  json.url photo_url(photo, format: :json)
end
