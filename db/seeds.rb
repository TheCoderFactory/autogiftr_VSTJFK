# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(email: 'admin@example.com', password: 'password')
user1.user_account = UserAccount.create(name: 'Admin')
user1.add_role :admin
puts "user1 created"

user2 = User.create(email: 'user@example.com', password: 'password')
user2.user_account = UserAccount.create(name: 'User')
puts "user2 created"

gift1 = Gift.create(name: 'Roses', price: 100.0)
gift2 = Gift.create(name: 'Horse ride', price: 200.0)