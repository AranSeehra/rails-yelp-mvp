# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# ["chinese", "italian", "japanese", "french", "belgian"].
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '02076783945', category: 'belgian' }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '02076737263', category: 'italian' }
cocotte =  {name: "Cocotte Shoreditch", address: "8 Hoxton Square, London N1 6NU", phone_number: '02070334277', category: 'french' }
chez_elles =  {name: "Chez Elles Bistroquet", address: "45 Brick Ln, London E1 6PU", phone_number: '02072479699', category: 'french' }
sanjugo =  {name: "Sanjugo Shoreditch", address: "35 Scrutton St, London EC2A 4HU", phone_number: '02076133225', category: 'japanese' }

[dishoom, pizza_east, cocotte, chez_elles, sanjugo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
