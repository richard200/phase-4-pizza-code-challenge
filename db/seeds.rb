# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all 
Pitzza.destroy_all 
RestaurantPizza.destroy_all 

# //Restaurant data 

puts "Seeding restaurants..." 

   r1 = Restaurant.create(name:"Pride Hotel", address: "111, Mombasa")
   r2 = Restaurant.create(name:"Chase Center", address: "23, Los Angeles")
   r3 = Restaurant.create(name:"Weston Hotel", address:" 197, Nairobi" )
   r4 = Restaurant.create(name:"Holiday Inn", address: "142, Kisii")
   r5 = Restaurant.create(name:"Park Inn", address: "236, Kisumu")

puts "Seeding pizzas..." 

p1 = Pitzza.create(name:"Cheese Pizza",ingredients:"Butter, Wheat, Cheese")
p2 = Pitzza.create(name:"Vanilla Pot Pie",ingredients:"Dough, Milk, Vanilla")
p3 = Pitzza.create(name:"Strawberry Slurp",ingredients:"Butter, Tomato, Strawberry")
p4 = Pitzza.create(name:"Chocolate Maple",ingredients:"Coconut, Milk, Chocolate, Maple")
p5 = Pitzza.create(name:'Peporoni',ingredients:"Mango, Wheat, Peporoni") 

# //RestaurantPizza data 

puts "Seeding restaurant_pizza" 

RestaurantPizza.create(price:7, pitzza_id:p1.id, restaurant_id:r3.id)
RestaurantPizza.create(price:9, pitzza_id:p4.id, restaurant_id:r1.id)
RestaurantPizza.create(price:10, pitzza_id:p3.id, restaurant_id:r4.id)
RestaurantPizza.create(price:8, pitzza_id:p2.id, restaurant_id:r3.id)
RestaurantPizza.create(price:7, pitzza_id:p3.id, restaurant_id:r5.id)
RestaurantPizza.create(price:7, pitzza_id:p1.id, restaurant_id:r2.id)
RestaurantPizza.create(price:9, pitzza_id:p4.id, restaurant_id:r1.id)
RestaurantPizza.create(price:10, pitzza_id:p3.id, restaurant_id:r4.id)
RestaurantPizza.create(price:8, pitzza_id:p1.id, restaurant_id:r1.id)
RestaurantPizza.create(price:7, pitzza_id:p1.id, restaurant_id:r5.id)

puts "Done seeding..."