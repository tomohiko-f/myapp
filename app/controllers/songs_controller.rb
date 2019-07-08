class SongsController < ApplicationController
    
    require 'aws-sdk-s3'
    
    before_action :find_song, only: [:show, :download]

    def index
        @songs = Song.order(created_at: :desc)
    end
    
    def show
    end
    
    def download
        data = open(URI.encode("https://#{ENV['AWS_S3_DEV_BUCKET']}/#{@song.song_title}.mp3"))
        send_data data.read, :disposition => "attachment", :filename => "#{@song.song_title}.mp3", :type => "audio/mpeg"
        
        # s3 = Aws::S3::Resource.new(
        #     access_key_id: ENV["AWS_ACCESS_KEY_ID"],
        #     secret_access_key: ENV["AWS_SECRET_KEY"],
        #     region: ENV["AWS_REGION"]
        # )
        
        # s3.bucket(ENV["AWS_BUCKET"]).object("store/#{find_song}").get(response_target: "#{Rails.root}/dayzsong-s3-001/#{find_song}.#{@song.content_type}")
    end
    
    def find_song
        @song = Song.find(params[:id])
    end

    
end
