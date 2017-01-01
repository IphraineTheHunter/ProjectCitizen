class StreamsController < ApplicationController
  before_filter :validate_user

  def create
      unless params[:title].match(" ").present?
          flash[:notice] = "Please write your titles as a sentence."
          redirect_to(:back)
      else
          if params[:title].length <= 100
              content = params[:content]
              new_stream = Stream.create(board_id: params[:board_id], user_id: current_user.id, title: params[:title])
              current_user.posts.create(stream_id: new_stream.id, content: content)

              redirect_to board_streams_path + '/' + new_stream.id.to_s
          else
              flash[:notice] = "Title is too long."
              redirect_to(:back)
          end
      end
  end

  def new
      @user = current_user
      @post = Post.new
      @board = Board.find(params[:board_id].to_i)
      @board_name = Board.find(params[:board_id].to_i).name
      @stream = Stream.new
  end

  def index
    @streams = Stream.where(board_id: params[:board_id]).each
    @board_name = Board.find(params[:board_id].to_i).name
    @board_id = params[:board_id]
    @users = User.all
  end

  def show
      @posts = Post.where(stream_id: params[:id]).each
      @stream_title = Stream.find(params[:id].to_i).title
      @board_name = Board.find(params[:board_id].to_i).name
      @board_id = params[:board_id]
      @stream_id = params[:id]
      @post = Post.new
      @users = User.all
      @streams = Stream.all
  end

end
