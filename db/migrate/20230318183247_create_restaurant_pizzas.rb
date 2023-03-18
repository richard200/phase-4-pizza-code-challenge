class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.string :price
      t.integer :pitzza_id, null: false
      t.integer :restaurant_id, null: false

      t.timestamps
    end
  end
end
