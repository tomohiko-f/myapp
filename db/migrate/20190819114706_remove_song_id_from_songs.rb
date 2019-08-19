class RemoveSongIdFromSongs < ActiveRecord::Migration[5.0]
  def up
    remove_column :songs, :song_id
  end
  def down
    add_column :songs, :song_id, :int
  end
end
