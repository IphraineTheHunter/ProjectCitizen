class UsersController < ApplicationController
    before_filter :validate_user

=begin
User Roles:
    Admin: Ann - 0
    General: Gerald - 1
    Small-Farm: Sally - 2
    Ag-Indus: Albert - 3
=end

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
