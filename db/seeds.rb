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

def createPhoto (name, filename, albumId) 
  photo = Photo.create!( name:"#{name}", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/#{filename}")), album_id: albumId)
end

p99 = createPhoto("MethodTest","betty_3.jpg",a3.id)

p1 = Photo.create!( name:"Trolling YouTube comments!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/betty_1.jpg")), album_id: a1.id)
p2 = Photo.create!( name:"Janice playing WoW 10 hours straight!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/betty_2.jpg")), album_id: a1.id)
p3 = Photo.create!( name:"Diane discovering photoshop for the first time.", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/betty_3.jpg")), album_id: a1.id)
p4 = Photo.create!( name:"ASL? 18, F, California obvs.", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/betty_4.jpg")), album_id: a1.id)
p5 = Photo.create!( name:"Watching keyboard cat together.", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/betty_5.jpg")), album_id: a1.id)
p6 = Photo.create!( name:"pwning n00bs!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Wullie_1.jpg")), album_id: a2.id)
p7 = Photo.create!( name:"I am invincible!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Wullie_2.jpg")), album_id: a2.id)
p8 = Photo.create!( name:"Haxs m8!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Wullie_3.jpg")), album_id: a2.id)
p9 = Photo.create!( name:"Pepperoni or bbq chicken?", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Wullie_4.jpg")), album_id: a2.id)
p10 = Photo.create!( name:"Face-timing the bit on the side.", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Wullie_5.jpg")), album_id: a2.id)
p11 = Photo.create!( name:"Nature and technology!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Gepetto_1.jpg")), album_id: a3.id)
p12 = Photo.create!( name:"I'm such a charmer!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Gepetto_2.jpg")), album_id: a3.id)
p13 = Photo.create!( name:"Fwaa look a the ankles on that!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Gepetto_3.jpg")), album_id: a3.id)
p14 = Photo.create!( name:"Jks!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Gepetto_4.jpg")), album_id: a3.id)
p15 = Photo.create!( name:"Danny on plenty of fish!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/Gepetto_5.jpg")), album_id: a3.id)
p16 = Photo.create!( name:"Hey gurl!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/great_1.jpg")), album_id: a4.id)
p17 = Photo.create!( name:"Supreese!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/great_2.jpg")), album_id: a4.id)
p18 = Photo.create!( name:"Don't make me put my specs down, lolz!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/great_3.jpg")), album_id: a4.id)
p19 = Photo.create!( name:"Rekt m8!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/great_4.png")), album_id: a4.id)
p20 = Photo.create!( name:"New crimbo jumper fam!", photo_image: File.open(File.join(Rails.root,"/app/uploaders/seed/great_5.jpg")), album_id: a4.id)
