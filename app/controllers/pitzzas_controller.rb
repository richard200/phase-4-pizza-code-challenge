class PitzzasController < ApplicationController
    def index 
        pizza = Pitzza.all 
        render json: pizza
    end
end
