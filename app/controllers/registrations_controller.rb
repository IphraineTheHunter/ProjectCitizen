class RegistrationsController < ApplicationController

    def create
        unless Registration.where(email: params[:registration][:email]).present?
            Registration.create(email: params[:registration][:email])
            redirect_to(root_url)
        else
            redirect_to :back
        end
    end

    def show
        @registration = Registration.new
    end
end
