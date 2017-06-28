# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
meats= ["pork","beef","chiken","tuna","cheese","marlin","potato","tomato"]
garnishes =["salsa", "chili pepper", "avocado", "guacamole", "coriander", "tomatoes", "onions", "lettuce"]
50.times do |x|
  meat = meats.sample
  puts Taco.create(name: Faker::Food.spice + " " + meat + " taco", price: rand(10..200),meat: meat,garnish: garnishes.sample)
end
