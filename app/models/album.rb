class Album < ApplicationRecord

  validates :artist, :name, :year, presence: :true
  validate :validate_artist_name
  validate :validate_year_format


  def validate_artist_name
    unless Artist.all_names.include? artist
      errors.add(
        :artist, :invalid
      )
    end
  end

  def validate_year_format
    if year.match("[a-zA-Z]+") || year.length > 4
      errors.add(
        :year, :invalid
      )
    end
  end
end
