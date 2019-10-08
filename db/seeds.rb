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

Product.create(name: "Blue Denim Leggings", category: "Womens", subcategory: "Pants", available_qty: 100, description: "Stretchy denim leggings that are super soft and comfy", price: 60, color: "blue", business_id: 1)
Product.create(name: "Chenille Sweater", category: "Womens", subcategory: "Sweaters", available_qty: 75, description: "Soft cozy sweater", price: 40, color: "pink", business_id: 1)
Product.create(name: "Sequin Tee", category: "Womens", subcategory: "Tees", available_qty: 75, description: "Super fun sequin tee.  Great for dinner out!", price: 25, color: "gold", business_id: 1)

Image.create(link: "")
