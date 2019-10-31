# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Nicole", email: "nicole@email.com", password: "password")
User.create(username: "Sara", email: "sara@email.com", password: "password")
User.create(username: "Jason", email: "jason@email.com", password: "password")
User.create(username: "John", email: "john@email.com", password: "password")

# Business.create(name: "The Women's Shop", tax_id: 98765, user_id: 1)
# Business.create(name: "Computer Depo", tax_id: 12345, user_id: 2)
# Business.create(name: "The Home Store", tax_id: 56789, user_id: 3)
# Business.create(name: "The Mens Shop", tax_id: 22727, user_id: 4)



Category.create(name: "Womens")
Category.create(name: "Mens")
Category.create(name: "Electronics")
Category.create(name: "Furnature")
Category.create(name: "Kitchen Appliances")
Category.create(name: "Kids")
Category.create(name: "Toys")
Category.create(name: "Baby")
Category.create(name: "Pantry", image: "https://images.pexels.com/photos/42317/cereal-spoonful-strawberry-spoon-42317.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")

Subcategory.create(name: "Tops")
Subcategory.create(name: "Sweaters")
Subcategory.create(name: "Pants")
Subcategory.create(name: "Hats")
Subcategory.create(name: "Labtops")
Subcategory.create(name: "Mobile Phones")
Subcategory.create(name: "Dining Table")
Subcategory.create(name: "Mixer")



Product.create(item_number: 12345, name: "Blue Denim Leggings", category_id: 1, subcategory_id: 3, description: "Stretchy denim leggings that are super soft and comfy", price: 60, business_id: 15)
Product.create(item_number: 37594, name: "Chenille Sweater", category_id: 1, subcategory_id: 2, description: "Soft cozy sweater", price: 40, business_id: 15)
Product.create(item_number: 89474, name: "Sequin Tee", category_id: 1, subcategory_id: 1, description: "Super fun sequin tee.  Great for dinner out!", price: 25, business_id: 15)
Product.create(item_number: 45693, name: "Hat", category_id: 1, subcategory_id: 4, description: "Hat to keep warm", price: 25, business_id: 15)

Product.create(item_number: 67897, name: "Denim Jeans", category_id: 2, subcategory_id: 3, description: "Denim Jeans", price: 75, business_id: 18)
Product.create(item_number: 90754, name: "Sweater", category_id: 2, subcategory_id: 2, description: "Mens Soft Sweater", price: 40, business_id: 18)
Product.create(item_number: 89939, name: "Casual Tee", category_id: 2, subcategory_id: 1, description: "Mens Casual Tee", price: 30, business_id: 18)

w = Product.create(item_number: 66666, name: "Casual Tee", category_id: 1, subcategory_id: 1, description: "Womens Casual Tee", price: 25, business_id: 15, image: "https://images.pexels.com/photos/428338/pexels-photo-428338.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")


Color.create(color_name: "Dark Blue", available_qty: 50, product_id: 1)
Color.create(color_name: "Light Blue", available_qty: 50, product_id: 1)
Color.create(color_name: "Red", available_qty: 25, product_id: 2)
Color.create(color_name: "Pink", available_qty: 25, product_id: 2)
Color.create(color_name: "Blue", available_qty: 25, product_id: 2)
Color.create(color_name: "Gold", available_qty: 25, product_id: 3)
Color.create(color_name: "Black", available_qty: 25, product_id: 4)
Color.create(color_name: "Gray", available_qty: 25, product_id: 4)


Color.create(color_name: "Dark Blue", available_qty: 50, product_id: 5)
Color.create(color_name: "Light Blue", available_qty: 50, product_id: 5)
Color.create(color_name: "Blue", available_qty: 25, product_id: 6)
Color.create(color_name: "Black", available_qty: 25, product_id: 6)
Color.create(color_name: "Tan", available_qty: 25, product_id: 6)
Color.create(color_name: "White", available_qty: 25, product_id: 7)
Color.create(color_name: "Blue", available_qty: 25, product_id: 7)



Image.create(link: "https://images.pexels.com/photos/235525/pexels-photo-235525.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", product_id: 5)
Image.create(link: "https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", product_id: 5)