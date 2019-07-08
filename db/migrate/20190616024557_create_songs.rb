class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.integer :song_id, null: false
      t.string :song_title, null: false
      t.time :song_time
      t.integer :song_bpm
      t.string :song_genre
      t.string :youtube_video_id,  null: false

      t.timestamps
    end
  end
end
