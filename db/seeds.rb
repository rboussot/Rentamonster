# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
pierre = User.create(first_name: "Pierre", last_name: "Lazzaref", password: "8765432", email: "pierre.lazzaref@gmail.com")
paul = User.create(first_name: "Paul", last_name: "Ricoeur", password: "tyazrr", email: "david.bowie@gmail.com")
jacques = User.create(first_name: "Jacques", last_name: "Derrida", password: "derderida", email: "deridez.moi@gmail.com")
Monster.create(name: "Cthulhu", user:pierre, species:"Classic")
Monster.create(name: "Frankenstein", user:paul, species:"Classic")
Monster.create(name: "Barbapapa",user:jacques, species:"Blob")
