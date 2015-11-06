class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.integer :photo_id
      t.string :name
    end
  end
end
