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
# john.photo = Attachinary::File.new(resource_type: 'image', version: '', public_id: '') # remote to bdd
# john.save
# john.photo = File.open(local_path) # approximatif - local to remote through bdd
#
david = User.create(first_name: "David", last_name: "Bowie", password: "azerty", email: "david.bowie@gmail.com")
barack = User.create(first_name: "Barack", last_name: "Obama", password: "azerty", email: "barack.obama@gmail.com")
pierre = User.create(first_name: "Pierre", last_name: "Lazzaref", password: "8765432", email: "pierre.lazzaref@gmail.com")
paul = User.create(first_name: "Paul", last_name: "Ricoeur", password: "tyazrr", email: "david.bowie@gmail.com")
jacques = User.create(first_name: "Jacques", last_name: "Derrida", password: "derderida", email: "deridez.moi@gmail.com")

bill = Monster.new(name: "Bill", user:john, species:"Vampire", title:"Elegant and thirsty")
bill.photo = Attachinary::File.new(resource_type: 'image', version: 'v1471434959', public_id: 'm8pzwrvxsjoiljtijdtv')
bill.save

nessie = Monster.new(name: "Nessie", user:john, species:"Dinosaur", title:"Shy but supportive")
nessie.photo = Attachinary::File.new(resource_type: 'image', version: 'v1471435008', public_id: 'g89wjreek4ftnkmezzw7')
nessie.save

garou = Monster.new(name: "Garou",user:john, species:"Werewolf", title:"Night only")
garou.photo = Attachinary::File.new(resource_type: 'image', version: 'v1471434992', public_id: 'yxqndunbxk1mliabckpx')
garou.save

ctulu = Monster.new(name: "Cthulhu", user:john, species:"Classic", title:"H.P. Lovecraft's cosmic entity")
ctulu.photo = Attachinary::File.new(resource_type: 'image', version: 'v1471435040', public_id: 'kxvf2wa95zipo322g9ou')
ctulu.save

frank = Monster.new(name: "Frankenstein", user:john, species:"Classic", title:"Mary Shelley's utlimate freak")
frank.photo = Attachinary::File.new(resource_type: 'image', version: 'v1471435055', public_id: 'ccmfhrmaou6uuynvqlqf')
frank.save

barba = Monster.new(name: "Barbapapa",user:john, species:"Blob", title:"‎Annette Tison and Talus Taylor children's favorite")
barba.photo = Attachinary::File.new(resource_type: 'image', version: 'v1471435074', public_id: 'i3az6fjdmnyhapwmrora')
barba.save
