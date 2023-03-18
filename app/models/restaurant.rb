class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pitzzas through: :restaurant_pizzas
end
