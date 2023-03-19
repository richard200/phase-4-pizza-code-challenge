class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index 
        rest = Restaurant.all 
        render json: rest
    end



    private

    def render_not_found_response
      render json: { error: "Restaurant not found" }, status: :not_found
    end
end
