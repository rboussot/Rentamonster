# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
User.destroy_all
Monster.destroy_all

john = User.create(first_name: "John", last_name: "Lennon", password: "azerty", email: "john.lennon@gmail.com")
david = User.create(first_name: "David", last_name: "Bowie", password: "azerty", email: "david.bowie@gmail.com")
barack = User.create(first_name: "Barack", last_name: "Obama", password: "azerty", email: "barack.obama@gmail.com")
Monster.create(name: "Bill", user:john, species:"Vampire", title:"Elegant and thirsty")
Monster.create(name: "Nessie", user:john, species:"Dinosaur", title:"Shy but supportive")
Monster.create(name: "Garou",user:john, species:"Werewolf", title:"Night only")
pierre = User.create(first_name: "Pierre", last_name: "Lazzaref", password: "8765432", email: "pierre.lazzaref@gmail.com")
paul = User.create(first_name: "Paul", last_name: "Ricoeur", password: "tyazrr", email: "david.bowie@gmail.com")
jacques = User.create(first_name: "Jacques", last_name: "Derrida", password: "derderida", email: "deridez.moi@gmail.com")
Monster.create(name: "Cthulhu", user:john, species:"Classic", title:"H.P. Lovecraft's cosmic entity")
Monster.create(name: "Frankenstein", user:john, species:"Classic", title:"Mary Shelley's utlimate freak")
Monster.create(name: "Barbapapa",user:john, species:"Blob", title:"‎Annette Tison and Talus Taylor children's favorite")

