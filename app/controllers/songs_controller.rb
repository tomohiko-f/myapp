class SongsController < ApplicationController
    
    require 'aws-sdk-s3'
    
    before_action :find_song, only: [:show, :download]

    def index
        @songs = Song.page(params[:page]).per(4).order('id ASC')
    end
    
    def show
        @comment = Comment.new
        @comments = @song.comments.page(params[:page]).per(10)
    end
    
    def download
        region = ENV['S3_REGION']
        bucket = ENV['S3_BUCKET']
        key = "#{@song.song_title}.mp3"
        
        client = Aws::S3::Client.new(region: region)
        data = client.get_object(:bucket => bucket, :key => key).body
        file_name = "#{key}"
        type = "audio/mpeg"
        
        send_data data.read, :disposition => "attachment", :filename => file_name, :type => type
    end
    
    def find_song
        @song = Song.find(params[:id])
    end
end
