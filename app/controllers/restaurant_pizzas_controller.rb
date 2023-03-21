class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :unprocessable_entity_method

  

    def create 
        rest_pizz = RestaurantPizza.create!(rest_pizza_params)
        render json: rest_pizz, status: :created
    end

private 

def rest_pizza_params
    params.permit(:restaurant_id, :pitzza_id, :price)
end

def render_not_found_response
    render json: { error: "Restaurant not found" }, status: :not_found
  end

  def unprocessable_entity_method(e) 
    render json: {errors: e.record.errors}, status: :unprocessable_entity
end
  
end
