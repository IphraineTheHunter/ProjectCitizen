class UsersController < ApplicationController
    before_filter :validate_user

    def show
        unless params[:id].present?
            @user = current_user
        else
            @user = User.find(params[:id])
        end
        @posts = @user.posts.each
        @streams = Stream.all

    end
end
