# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database..."
Restaurant.destroy_all

puts "creating restaurants.."
mamamia = { name: "mamamia", address:"100 rue roma", phone_number:"01020305", category:"italian"}
miammiam = { name: "miammiam", address:"4 rue hugo", phone_number:"01020305", category:"french"}
fritesss = { name: "fritesss", address:"2020 avenue franklin", phone_number:"01020305", category:"belgian"}
itsnem = { name: "itsnem", address:"2 rue deserre", phone_number:"01020305", category:"chinese"}
gingembre = { name: "gingembre", address:"centre ciale", phone_number:"01020305", category:"japanese"}

[ mamamia, miammiam, fritesss, itsnem, gingembre  ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
