class PostController < ApplicationController
    before_filter :validate_user

    def show
    end

    def create
        current_user.posts.create(stream_id: params[:stream_id], content: params[:post][:content])
        redirect_to board_streams_path + '/' + params[:stream_id]
    end

    def new
        @user = current_user
        @post = Post.new
        @board = Board.find(params[:board_id].to_i)
        @stream = Stream.find(params[:stream_id].to_i)
    end
end
