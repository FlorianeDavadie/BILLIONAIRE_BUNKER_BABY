# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Bunker.destroy_all
User.destroy_all

user1 = User.create(first_name: "Françoise", last_name: "Bettencourt-Meyers", email: "FloB@gmail.com", password: "123456")

file = URI.open("https://res.cloudinary.com/dz19chcgd/image/upload/v1677600895/nandor-muzsik-2T47CztPSyM-unsplash_bhexpd.jpg")
bunker = Bunker.new(title: "Diamond Bunker", description: "lorem12", prix: 2000, user: user1)
bunker.photo.attach(io: file, filename: "bunker1.jpg", content_type: "image/jpg")
bunker.save!

user2 = User.create(first_name: "Elon", last_name: "Musk", email: "ElonMusk@gmail.com", password: "7891011")

file1 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672147/alex-wong-l5Tzv1alcps-unsplash_d0gt0a.jpg")
bunker = Bunker.new(title: "Gold Bunker", description: "lorem11", prix: 4000, user: user2)
bunker.photo.attach(io: file1, filename: "bunker2.jpg", content_type: "image/jpg")
bunker.save!

user3 = User.create(first_name: "Jeff", last_name: "Bezos", email: "JeffBezos@gmail.com", password: "789231")

file2 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677676258/rod-long-2P_ifaetDm0-unsplash_oghyic.jpg")
bunker = Bunker.new(title: "Green Bunker", description: "lorem13", prix: 10_000, user: user3)
bunker.photo.attach(io: file2, filename: "bunker3.jpg", content_type: "image/jpg")
bunker.save!

user4 = User.create(first_name: "Bill", last_name: "Gates", email: "BillGates@gmail.com", password: "8012729°")

file3 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672145/don-shetterly-VYZKzvk7qTw-unsplash_vyg8ob.jpg")
bunker = Bunker.new(title: "Blue Bunker", description: "lorem14", prix: 10_000, user: user4)
bunker.photo.attach(io: file3, filename: "bunker4.jpg", content_type: "image/jpg")
bunker.save!

user5 = User.create(first_name: "Bernard", last_name: "Arnault", email: "BernardArnault@gmail.com", password: "09283382°")

file4 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677676259/ralph-ravi-kayden-zSG-kd-L6vw-unsplash_jopgpr.jpg")
bunker = Bunker.new(title: "Black Bunker", description: "lorem15", prix: 20_000, user: user5)
bunker.photo.attach(io: file4, filename: "bunker5.jpg", content_type: "image/jpg")
bunker.save!

user6 = User.create(first_name: "Mark", last_name: "Zuckerberg", email: "m.zuckerberg@gmail.com", password: "19820301°")

file5 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677680893/mark-champs-Id2IIl1jOB0-unsplash_ixh2ew.jpg")
bunker = Bunker.new(title: "Yellow Bunker", description: "lorem16", prix: 15_000, user: user6)
bunker.photo.attach(io: file5, filename: "bunker6.jpg", content_type: "image/jpg")
bunker.save!

user7 = User.create(first_name: "Alice", last_name: "Walton", email: "a.walton@gmail.com", password: "19932303°")

file6 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677680893/huum-NHLS5hOSH0c-unsplash_g8htso.jpg")
bunker = Bunker.new(title: "Grey Bunker", description: "lorem17", prix: 25_000, user: user7)
bunker.photo.attach(io: file6, filename: "bunker7.jpg", content_type: "image/jpg")
bunker.save!

user8 = User.create(first_name: "Michael", last_name: "Bloomberg", email: "m.bloomberg@gmail.com", password: "18529389°")

file7 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672145/alex-holzreiter-i7nqRB8Fd0Y-unsplash_om7uof.jpg")
bunker = Bunker.new(title: "Platinium Bunker", description: "lorem18", prix: 8_000, user: user8)
bunker.photo.attach(io: file7, filename: "bunker8.jpg", content_type: "image/jpg")
bunker.save!

user9 = User.create(first_name: "Warren", last_name: "Buffett", email: "w.buffett@gmail.com", password: "6979722°")

file8 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677681385/adam-winger-To4Yip8rc-Q-unsplash_smnl03.jpg")
bunker = Bunker.new(title: "Ruby Bunker", description: "lorem19", prix: 69_000, user: user9)
bunker.photo.attach(io: file8, filename: "bunker9.jpg", content_type: "image/jpg")
bunker.save!
