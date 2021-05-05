class MountainsController < ApplicationController

    def index
        @mountains = Mountain.all
        render json: @mountains, include: :climbing_routes
    end
    
    def show
        @mountain = Mountain.find params[:id]
        render json: @mountain, include: :climbing_routes
    end

end
