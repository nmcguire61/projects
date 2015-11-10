class AddAlbumIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :album_id, :intger
  end
end
