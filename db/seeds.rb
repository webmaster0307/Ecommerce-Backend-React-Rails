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
