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

user1 = User.create(first_name: "Star Wars", last_name: "labelle et bete", email: "gerger@gmail.com", password: "123456")

file = URI.open("https://res.cloudinary.com/dz19chcgd/image/upload/v1677600895/nandor-muzsik-2T47CztPSyM-unsplash_bhexpd.jpg")
bunker = Bunker.new(title: "bunker avec pisicne", description: "Pool de luxe !", prix: 55.5, user: user1)
bunker.photo.attach(io: file, filename: "bunker1.jpg", content_type: "image/jpg")
bunker.save!

# require 'faker'
# Bunker.destroy_all

# puts 'Creating 10 fake movies...'
# 10.times do
#   Bunker.create(
#     title:
#     description:
#     prix:
#     rating:
#   )
# end
