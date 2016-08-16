# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
john = User.create(first_name: "John", last_name: "Lennon", password: "azerty", email: "john.lennon@gmail.com")
david = User.create(first_name: "David", last_name: "Bowie", password: "azerty", email: "david.bowie@gmail.com")
barack = User.create(first_name: "Barack", last_name: "Obama", password: "azerty", email: "barack.obama@gmail.com")
Monster.create(name: "Bill", user:john, species:"Vampire")
Monster.create(name: "Nessie", user:david, species:"Dinosaur")
Monster.create(name: "Garou",user:barack, species:"Werewolf")

