# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1234", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "09822", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Hiptown", address: "26 rue de la république 13001 Marseille", phone_number: "0987646", category: "japanese")
puts "created Hiptown"
Restaurant.create!(name: "Le Canebière", address: "79 la canebière 13001 Marseille", phone_number: "0967646", category: "french")
puts "Created Le canebière"
Restaurant.create!(name: "La plage", address: "200 av du prado, 13008 Marseille", phone_number: "0900646", category: "belgian")
puts "Created La plage"
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
