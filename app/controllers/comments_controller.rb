class CommentsController < ApplicationController
    def create
        @song = Song.find(params[:song_id])
        @comment = @song.comments.build(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
            redirect_back(fallback_location: root_path)
        else
            redirect_back(fallback_location: root_path, alert: 'メーセージの送信に失敗しました')
        end
    end
    

    
    def comment_params
       params.require(:comment).permit(:content, :post_id, :user_id)
    end

end
