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

Item.create(:id=>1, :name=>"Milk", :description=>"Organic Whole Milk")
Item.create(:id=>2, :name=>"Oranges", :description=>"Halos")
Item.create(:id=>3, :name=>"Apples", :description=>"Organic Fuji Apples")
Item.create(:id=>4, :name=>"Pears", :description=>"Organic Bartlett Pears")
Item.create(:id=>5, :name=>"Oranges", :description=>"Halos")
Item.create(:id=>6, :name=>"Eggs", :description=>"Organic Range Free")
Item.create(:id=>7, :name=>"Bananas", :description=>"Dole")
Item.create(:id=>8, :name=>"Strawberries", :description=>"Organic")
