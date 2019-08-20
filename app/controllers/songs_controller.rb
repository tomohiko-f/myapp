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
        data = open(URI.encode("https://#{ENV['AWS_S3_DEV_BUCKET']}/#{@song.song_title}.mp3"))
        send_data data.read, :disposition => "attachment", :filename => "#{@song.song_title}.mp3", :type => "audio/mpeg"
    end
    
    def find_song
        @song = Song.find(params[:id])
    end
end
