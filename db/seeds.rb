# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Album.delete_all
Photo.delete_all

u1 = User.create!( name: "Betty", email:"battleaxebetty@internets.example", password:"password", role: :full_member)
u2 = User.create!( name: "Wullie", email:"wanderingwullie@internets.example", password:"password", role: :admin)
u3 = User.create!( name: "Gepetto", email:"gepettingzoo@internets.example", password:"password", role: :free_member)
u4 = User.create!( name: "Harold", email:"harollingthunder@internets.example", password:"password", role: :full_member)

a1 = Album.create!( user_id: u1.id, name: "Memories")
a2 = Album.create!( user_id: u2.id, name: "Summer lolz!")
a3 = Album.create!( user_id: u3.id, name: "Nature shotz")
a4 = Album.create!( user_id: u4.id, name: "HarHar and chums")


p1 = Photo.create!( name:"Trolling YouTube comments!", photo_image:"betty_1.jpg", album_id: a1.id)
p2 = Photo.create!( name:"pwning n00bs!", photo_image:"Wullie1.jpg", album_id: a2.id)
p3 = Photo.create!( name:"ASL? Lolz!", photo_image:"Gepetto.jpg", album_id: a3.id)
p4 = Photo.create!( name:"Rekt m8!", photo_image:"great_4.jpg", album_id: a4.id)
