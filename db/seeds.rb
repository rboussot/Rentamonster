# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
puts "All bookings destroyed"
Monster.destroy_all
puts "All monsters destroyed"
User.destroy_all
puts "All users destroyed"

john = User.create(first_name: "John", last_name: "Lennon", password: "azerty", email: "john.lennon@gmail.com")
# john.photo = Attachinary::File.new(resource_type: 'image', version: '', public_id: '') # remote to bdd
# john.save
# john.photo = File.open(local_path) # approximatif - local to remote through bdd
puts "User John Lennon created"

User.create(first_name: "David", last_name: "Bowie", password: "azerty", email: "david.bowie@gmail.com")
puts "User David Bowie created"

bill = Monster.new(name: "Bill", user: john, species: "Vampire", title: "Elegant and thirsty", availability: "Ongoing", behavior: "Scary", price: 5)
bill.photo = File.open(Rails.root.join('app', 'assets', 'images', 'bill.jpg'))
bill.save
puts "Monster Bill created"

nessie = Monster.new(name: "Nessie", user:john, species:"Dinosaur", title:"Shy but sportive", availability: "Ongoing", behavior: "Sportive", price: 5)
nessie.photo = File.open(Rails.root.join('app', 'assets', 'images', 'nessie.jpg'))
nessie.save
puts "Monster Nessie created"

garou = Monster.new(name: "Garou",user:john, species:"Werewolf", title:"Night only", availability: "Ongoing", behavior: "offensive", price: 5)
garou.photo = File.open(Rails.root.join('app', 'assets', 'images', 'garou.jpg'))
garou.save
puts "Monster Garou created"

ctulu = Monster.new(name: "Cthulhu", user:john, species:"Classic", title:"H.P. Lovecraft's cosmic entity", availability: "Ongoing", behavior: "Mysterious", price: 5)
ctulu.photo = File.open(Rails.root.join('app', 'assets', 'images', 'ctulu.jpg'))
ctulu.save
puts "Monster Ctulu created"

frank = Monster.new(name: "Frankenstein", user:john, species:"Classic", title:"Mary Shelley's ultimate freak", availability: "Ongoing", behavior: "Motivating", price: 5)
frank.photo = File.open(Rails.root.join('app', 'assets', 'images', 'frank.jpg'))
frank.save
puts "Monster Frank created"

barba = Monster.new(name: "Barbapapa",user:john, species:"Blob", title:"‎Annette Tison and Talus Taylor children's favorite", availability: "Ongoing", behavior: "Cuddling", price: 5)
barba.photo = File.open(Rails.root.join('app', 'assets', 'images', 'barba.jpg'))
barba.save
puts "Monster Barba created"
