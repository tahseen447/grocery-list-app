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
Item.create(:name=>"Cilantro", :description=>"Fresh Produce")
Item.create(:name=>"Diapers", :description=>"Huggies Pull ups")
Item.create(:name=>"Wipes", :description=>"Kirkland Signature")
Item.create(:name=>"Water", :description=>"Kirkland Signature")
Item.create(:name=>"Honey", :description=>"Organic Kirkland Signature")
Item.create(:name=>"Ice Cream", :description=>"Trader Joes Mini Cones")
Item.create(:name=>"Baby Spinach", :description=>"Organic Ready to eat")
Item.create(:name=>"Celery", :description=>"Washed and Cleaned ready to eat")
Item.create(:name=>"Bowties", :description=>"Bowties")
Item.create(:name=>"Thin Sphagetti", :description=>"Thin Sphagetti")
Item.create(:name=>"Mini Penne", :description=>"Mini Penne")
Item.create(:name=>"Pasta Sauce", :description=>"Newmann Own's Garlic Alfredo")
Item.create(:name=>"Protein Powder", :description=>"Sprouts unflavored no stevia")
Item.create(:name=>"Figs", :description=>"Fresh Black Figs")
Item.create(:name=>"Dates", :description=>"California Medjool")

StoreItem.create(:store_id=>3, :item_id=>2, :price=>5.49)
StoreItem.create(:store_id=>3, :item_id=>3, :price=>6.49)
StoreItem.create(:store_id=>3, :item_id=>4, :price=>3.99)
StoreItem.create(:store_id=>3, :item_id=>18, :price=>7.99)
StoreItem.create(:store_id=>3, :item_id=>19, :price=>1.99)
StoreItem.create(:store_id=>3, :item_id=>20, :price=>2.49)


StoreItem.create(:store_id=>2, :item_id=>22, :price=>9.99)
StoreItem.create(:store_id=>2, :item_id=>21, :price=>2.49)
StoreItem.create(:store_id=>2, :item_id=>23, :price=>6.49)
StoreItem.create(:store_id=>2, :item_id=>16, :price=>7.99)
StoreItem.create(:store_id=>2, :item_id=>15, :price=>3.49)

StoreItem.create(:store_id=>1, :item_id=>10, :price=>14.99)
StoreItem.create(:store_id=>1, :item_id=>11, :price=>12.99)
StoreItem.create(:store_id=>1, :item_id=>12, :price=>3.99)
StoreItem.create(:store_id=>1, :item_id=>13, :price=>7.49)
StoreItem.create(:store_id=>1, :item_id=>6, :price=>6.49)
StoreItem.create(:store_id=>1, :item_id=>1, :price=>2.99)


StoreItem.create(:store_id=>4, :item_id=>3, :price=>1.99)
StoreItem.create(:store_id=>4, :item_id=>4, :price=>2.99)
StoreItem.create(:store_id=>4, :item_id=>8, :price=>3.99)
StoreItem.create(:store_id=>4, :item_id=>16, :price=>5.99)
StoreItem.create(:store_id=>4, :item_id=>15, :price=>6.49)
StoreItem.create(:store_id=>4, :item_id=>14, :price=>3.49)

#User.create(:name=> "Tahseen Siddiqui", :email=>"tahseenfatima1986@gmail.com")
