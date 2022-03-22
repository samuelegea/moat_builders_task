class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :artist, :name, :year
end
