# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.create!(
    [
     {song_title: 'Parasol', song_bpm: 101, song_genre: '#pops', youtube_video_id: 'fJnJnDi2W_8', song_time: '2:04'},
     {song_title: 'Bouquet', song_bpm: 88, song_genre: '#pops', youtube_video_id: 'MgvYWq2Ovjg', song_time: '2:44'},
     {song_title: 'Room Light', song_bpm: 115, song_genre: '#soul #sick', youtube_video_id: 'Mn6AQiEP58s', song_time: '1:52'},
     {song_title: 'Dancing Fish', song_bpm: 128, song_genre: '#pops #chill', youtube_video_id: 'rwvK0Jo2u4Q', song_time: '3:16'},
     {song_title: 'Tunnel Magic', song_bpm: 94, song_genre: '#chill #pops #jazz', youtube_video_id: 'pVF-7LSDtKk', song_time: '2:29'},
     {song_title: 'cappuccino', song_bpm: 79, song_genre: '#lofi #chillhop', youtube_video_id: 'XUahTyvn7KA', song_time: '2:14'},
     {song_title: 'Tokyo', song_bpm: 113, song_genre: '#hiphop #rapbeat', youtube_video_id: 'qy35A0opAGw', song_time: '4:01'},
     {song_title: 'Night Bridge', song_bpm: 75, song_genre: '#lofihiphop #chillhop', youtube_video_id: 'PvjaMLHDKFE', song_time: '2:55'},
     {song_title: 'Healthy Love', song_bpm: 126, song_genre: '#piano #lofi', youtube_video_id: 'iFcNbAhTbIw', song_time: '2:48'},
     {song_title: 'You live in', song_bpm: 93, song_genre: '#RnB #jazzhop', youtube_video_id: 'NkOWq11JKLc', song_time: '3:28'}
    ]
)
