class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    validates :price, numericality: {
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 30
    }

    def create 
        rest_pizz = RestaurantPizza.create!(rest_pizza_params)
        render json: rest_pizz, {message: 'Validation errors'}
    end

private 

def rest_pizza_params
    params.permit(:restaurant_id, :pitzza_id, :price)
end

def render_not_found_response
    render json: { error: "Restaurant not found" }, status: :not_found
  end
  
end
