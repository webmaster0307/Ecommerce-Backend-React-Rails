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

Business.create(name: "The Women's Shop", tax_id: 98765, user_id: 1)
Business.create(name: "Computer Depo", tax_id: 12345, user_id: 2)
Business.create(name: "The Home Store", tax_id: 56789, user_id: 3)

Product.create(item_number: 12345, name: "Blue Denim Leggings", category: "Womens", subcategory: "Pants", description: "Stretchy denim leggings that are super soft and comfy", price: 60, business_id: 15)
Product.create(item_number: 37594, name: "Chenille Sweater", category: "Womens", subcategory: "Sweaters", description: "Soft cozy sweater", price: 40, business_id: 15)
Product.create(item_number: 89474, name: "Sequin Tee", category: "Womens", subcategory: "Tees", description: "Super fun sequin tee.  Great for dinner out!", price: 25, business_id: 15)
Product.create(item_number: 45693, name: "Hat", category: "Womens", subcategory: "Hat", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 25, business_id: 15)

Color.create(color_name: "Dark Blue", available_qty: 50, product_id: 1)
Color.create(color_name: "Light Blue", available_qty: 50, product_id: 1)
Color.create(color_name: "Red", available_qty: 25, product_id: 2)
Color.create(color_name: "Pink", available_qty: 25, product_id: 2)
Color.create(color_name: "Blue", available_qty: 25, product_id: 2)
Color.create(color_name: "Gold", available_qty: 25, product_id: 3)

Image.create(link: "https://images.pexels.com/photos/235525/pexels-photo-235525.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", product_id: 1)
Image.create(link: "https://images.pexels.com/photos/1082529/pexels-photo-1082529.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", product_id: 1)