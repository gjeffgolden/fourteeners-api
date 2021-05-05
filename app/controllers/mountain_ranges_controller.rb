class MountainRangesController < ApplicationController

    def index
        @mountain_ranges = MountainRange.all
        render json: @mountain_ranges, except: [:created_at, :updated_at]
    end

    def show
        @mountain_range = MountainRange.find params[:id]
        render json: @mountain_range, include: :mountains, except: [:created_at, :updated_at]
    end

end
