# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

nb_user = 10
nb_pin = 5
nb_com = 8

puts "AJOUT DE #{nb_user} USERS"
nb_user.times do
	User.create(name: Faker::Name.first_name)
end


puts "AJOUT DE #{nb_pin} PINS"
nb_pin.times do |i|
	Pin.create(user_id: rand(1..10), url: Faker::IDNumber.valid)
end


puts "AJOUT DE #{nb_com} COMMENTAIRES"
nb_com.times do
	Commentaire.create(pin_id: rand(1..nb_pin), user_id: rand(1..nb_user))
end