class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :name
      t.string :year

      t.timestamps
    end
  end
end
