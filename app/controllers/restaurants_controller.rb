class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        rest = Restaurant.all 
        render json: rest
    end

    def show
        rest = Restaurant.find_by!(id: params[:id])
        render json: rest, serializer: OneRestaurantSerializer, status: :ok

    end

    def destroy
        rest = Restaurant.find_by!(id: params[:id])
        rest.destroy(rest_params)
        render json: rest
    end


    private

    def render_not_found_response
      render json: { error: "Restaurant not found" }, status: :not_found
    end

    def rest_params
        params.permit(:name, :address)
    end
end
