# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
restaurants = [
  { name: "Llewellyn's", address: "293-295 Railton Rd, London, SE24 0JP", category: "European", phone_number: "020 7733 6676" },
  { name: "Kricket", address: "41-45 Atlantic Rd, London, SW9 8JL", category: "Indian", phone_number: "020 3826 4090" },
  { name: "Sabor", address: "35-37 Heddon St, London, W1B 4BR", category: "Spanish", phone_number: "020 3319 8130" },
  { name: "50 Kalo", address: "7 Northumberland Ave, London, WC2N 5BY", category: "Italian", phone_number: "020 7930 9955" },
  { name: "The Anchor & Hope", address: "36 The Cut, London, SE1 8LP", category: "British", phone_number: "020 7928 9898" }
]

restaurants.each do |restaurant_attrs|
  Restaurant.find_or_create_by!(restaurant_attrs)
end
