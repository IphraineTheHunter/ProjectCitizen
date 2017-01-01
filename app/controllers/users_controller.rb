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
            if User.find_by_id(params[:id]).present?
                @user = User.find(params[:id])
                @posts = @user.posts.each
                @streams = Stream.all
            else
                flash[:notice] = "User not found."
                redirect_to "/users/" + current_user.id.to_s
            end
        end
    end
end
