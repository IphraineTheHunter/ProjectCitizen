class AnnouncementsController < ApplicationController

    def create
        unless current_user.role == 0
            flash[:notice] = "You are not authorized to create new boards."
            redirect_to(:back)
        end

        if params[:title].present? == false or params[:content].present? == false
            flash[:notice] = "Please fill out all fields."
            redirect_to(:back)
        end

        new_announcement = Announcement.create(title: params[:title], content: params[:content], user_id: current_user.id)

        redirect_to announcements_path
    end

    def new
        unless current_user.role == 0
            flash[:notice] = "Authorization Failed."
            redirect_to board_path
        end

        @announcement = Announcement.new
    end

    def show
        if Announcement.find_by_id(params[:id]).present?
            @announcement = Announcement.find_by_id(params[:id])
        else
            flash[:notice] = "Announcement not found."
            redirect_to "/announcements/"
        end
    end

    def index
        @announcements = Announcement.all.reverse_order

    end
end
