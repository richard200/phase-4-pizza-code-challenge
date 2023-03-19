class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas, dependent: :destroy
    has_many :pitzzas through: :restaurant_pizzas
end
