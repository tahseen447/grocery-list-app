# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.create(:name=> "Costco", :description=>"Skypark")
Store.create(:name=>"Sprouts", :description =>"Anza")
Store.create(:name=>"Ralphs", :description=>"Rolling Hills")
Store.create(:name=>"Trader Joes", :description=>"Rolling Hills Plaza")

Item.create(:name=>"Milk", :description=>"Organic Whole Milk")
Item.create(:name=>"Oranges", :description=>"Halos")
Item.create(:name=>"Apples", :description=>"Organic Fuji Apples")
Item.create(:name=>"Pears", :description=>"Organic Bartlett Pears")
Item.create(:name=>"Oranges", :description=>"Halos")
Item.create(:name=>"Eggs", :description=>"Organic Range Free")
Item.create(:name=>"Bananas", :description=>"Dole")
Item.create(:name=>"Strawberries", :description=>"Organic")
