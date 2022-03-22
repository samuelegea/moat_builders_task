json.extract! album, :id, :artist, :name, :year, :created_at, :updated_at
json.url album_url(album, format: :json)
