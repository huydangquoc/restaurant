# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
food_items = [
  [ "Banh Mi", 25000 , "Breakfast", "Asian" ],
  [ "Banh Bao", 25000 , "Breakfast", "Western" ],
  [ "Banh Day", 25000 , "Breakfast", "Asian" ],
  [ "Banh Gio", 25000 , "Breakfast", "Western" ],
  [ "Banh Beo", 25000 , "Breakfast", "Asian" ],
  [ "Com Binh Dan", 30000 , "Lunch", "Western" ],
  [ "Com Van Phong", 30000 , "Lunch", "Asian" ],
  [ "Com Hop", 30000 , "Lunch", "Western" ],
  [ "Com Chien", 30000 , "Lunch", "Asian" ],
  [ "Com Tron", 30000 , "Lunch", "Western" ],
  [ "Banh Xeo", 50000 , "Dinner", "Asian" ],
  [ "Banh Cuon", 50000 , "Dinner", "Western" ],
  [ "Pho Bo", 50000 , "Dinner", "Asian" ],
  [ "Bun Bo Hue", 50000 , "Dinner", "Western" ],
  [ "Hen Xuc Banh Trang", 50000 , "Dinner", "Asian" ],
  [ "Cafe Sua Da", 15000 , "Drinks", "Western" ],
  [ "Sinh To Dau", 15000 , "Drinks", "Asian" ],
  [ "Kem Dua", 15000 , "Drinks", "Western" ],
  [ "Soda Chanh Duong", 15000 , "Drinks", "Asian" ],
  [ "Tra Da", 15000 , "Drinks", "Western" ]
]

food_items.each do |name, price, section, food_type|
  FoodItem.create( name: name, price: price, section: section, food_type: food_type)
end
