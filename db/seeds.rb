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
bunker = Bunker.new(title: "Diamond Bunker", description: "The best place you've ever been", prix: 2000, user: user1)
bunker.photo.attach(io: file, filename: "bunker1.jpg", content_type: "image/jpg")
bunker.save!

user2 = User.create(first_name: "Elon", last_name: "Musk", email: "ElonMusk@gmail.com", password: "7891011")

file1 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672147/alex-wong-l5Tzv1alcps-unsplash_d0gt0a.jpg")
bunker = Bunker.new(title: "Gold Bunker", description: "2.The best place you've ever been", prix: 4000, user: user2)
bunker.photo.attach(io: file1, filename: "bunker2.jpg", content_type: "image/jpg")
bunker.save!

user3 = User.create(first_name: "Jeff", last_name: "Bezos", email: "JeffBezos@gmail.com", password: "789231")

file2 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672146/pawel-czerwinski-D4KI5elMVCY-unsplash_cj3zod.jpg")
bunker = Bunker.new(title: "Green Bunker", description: "3.The best place you've ever been", prix: 10_000, user: user3)
bunker.photo.attach(io: file2, filename: "bunker3.jpg", content_type: "image/jpg")
bunker.save!

user4 = User.create(first_name: "Bill", last_name: "Gates", email: "BillGates@gmail.com", password: "8012729°")

file3 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672145/don-shetterly-VYZKzvk7qTw-unsplash_vyg8ob.jpg")
bunker = Bunker.new(title: "Blue Bunker", description: "4.The best place you've ever been", prix: 10_000, user: user4)
bunker.photo.attach(io: file3, filename: "bunker4.jpg", content_type: "image/jpg")
bunker.save!
