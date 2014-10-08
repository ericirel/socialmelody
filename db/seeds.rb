# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"test1@test.com", password:"test", username:"test1", fname:"Angas", lname:"Reid", location:"NYC", bio:"I love goats")
User.create(email:"test2@test.com", password:"test", username:"test2", fname:"Eric", lname:"Herskovic ", location:"BK", bio:"EDM is a movement")
User.create(email:"test3@test.com", password:"test", username:"test3", fname:"James", lname:"McCarthy", location:"Blacksburg", bio:"I enjoy a good sandwich")
User.create(email:"test4@test.com", password:"test", username:"test4", fname:"Erica", lname:"Boones", location:"San Jose", bio:"My kitty kat is my friend")
