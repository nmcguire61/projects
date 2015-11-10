class RemovePhotoIdFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :photo_id, :integer
  end
end
