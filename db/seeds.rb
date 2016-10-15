# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
food_items = [
  [ "Banh Mi", 25000 , "Breakfast" ],
  [ "Banh Bao", 25000 , "Breakfast" ],
  [ "Banh Day", 25000 , "Breakfast" ],
  [ "Banh Gio", 25000 , "Breakfast" ],
  [ "Banh Beo", 25000 , "Breakfast" ],
  [ "Com Binh Dan", 30000 , "Lunch" ],
  [ "Com Van Phong", 30000 , "Lunch" ],
  [ "Com Hop", 30000 , "Lunch" ],
  [ "Com Chien", 30000 , "Lunch" ],
  [ "Com Tron", 30000 , "Lunch" ],
  [ "Banh Xeo", 50000 , "Dinner" ],
  [ "Banh Cuon", 50000 , "Dinner" ],
  [ "Pho Bo", 50000 , "Dinner" ],
  [ "Bun Bo Hue", 50000 , "Dinner" ],
  [ "Hen Xuc Banh Trang", 50000 , "Dinner" ],
  [ "Cafe Sua Da", 15000 , "Drinks" ],
  [ "Sinh To Dau", 15000 , "Drinks" ],
  [ "Kem Dua", 15000 , "Drinks" ],
  [ "Soda Chanh Duong", 15000 , "Drinks" ],
  [ "Tra Da", 15000 , "Drinks" ]
]

food_items.each do |name, price, section|
  FoodItem.create( name: name, price: price, section: section)
end
