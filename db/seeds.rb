# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "destroyin seeds"

Booking.destroy_all
Bunker.destroy_all
User.destroy_all

puts "bunkers create"

user1 = User.create(first_name: "Françoise", last_name: "Bettencourt-Meyers", email: "FloB@gmail.com", password: "123456")
user1_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677778617/Francoise-Bettencourt-Meyers-Je-n-ai-qu-un-but-retrouver-ma-mere._ae6fs8.jpg")
user1.photo.attach(io: user1_file, filename: "user1.jpg", content_type: "image/jpg")
user1.save!

file = URI.open("https://res.cloudinary.com/dz19chcgd/image/upload/v1677600895/nandor-muzsik-2T47CztPSyM-unsplash_bhexpd.jpg")
bunker = Bunker.new(title: "Diamond Bunker", description: "Pretoria - South Africa", location: "Welcome to Diamond Bunker! Elegant eastside and recently renovated Bunker! We are a secluded getaway, perfect for privacy. This is an ideal rental for couples or families.
  Wifi internet, and cable TV, and every options are available.
  Access to a pool area, which includes a kiddie pool and hot tub. Access to a gym, basketball court, tennis court, and playground.", prix: 2000, user: user1)
bunker.photo.attach(io: file, filename: "bunker1.jpg", content_type: "image/jpg")
bunker.save!

user2 = User.create(first_name: "Elon", last_name: "Musk", email: "ElonMusk@gmail.com", password: "7891011")
user2_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677778601/em_1sb_jwztvk.png")
user2.photo.attach(io: user2_file, filename: "user2.png", content_type: "image/png")
user2.save!

file1 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672147/alex-wong-l5Tzv1alcps-unsplash_d0gt0a.jpg")
bunker = Bunker.new(title: "Gold Bunker", description: "Roubaix - France", location: "Welcome to Gold Bunker! Quiet, safe, and gated, this paradise will take your breath away!It was featured on magazine & reality tv show. The property is over 10,000 sq ft. with 6 bedrooms & 7 bathrooms.
  Each bedroom has its private bathroom for convenience. Also, a stunning Gourmet Kitchens & dining room.Great space for celebrities to stay during tours or just to relax.", prix: 4000, user: user2)
bunker.photo.attach(io: file1, filename: "bunker2.png", content_type: "image/png")
bunker.save!

user3 = User.create(first_name: "Jeff", last_name: "Bezos", email: "JeffBezos@gmail.com", password: "789231")
user3_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677783466/jeff-bezos_ny0vph.jpg")
user3.photo.attach(io: user3_file, filename: "user3.jpg", content_type: "image/jpg")
user3.save!

file2 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677676258/rod-long-2P_ifaetDm0-unsplash_oghyic.jpg")
bunker = Bunker.new(title: "Green Bunker", description: "Melbourne - Australia", location: "Welcome to Green Bunker! The Bunker is a beautiful 10 acre home located in the Melbourne area with 8 Bedrooms. 
  Pick up any of our provided rackets and play a set of tennis. Take a jump into our pool and cool off on a hot summer day. Enjoy our Eero mesh integrated WiFi system throughout the house with speeds up to 300 Mbps. Featured on a few TV shows, if you are looking for a quiet, secluded place north of New York, you have found your place.", prix: 10_000, user: user3)
bunker.photo.attach(io: file2, filename: "bunker3.jpg", content_type: "image/jpg")
bunker.save!

user4 = User.create(first_name: "Bill", last_name: "Gates", email: "BillGates@gmail.com", password: "8012729°")
user4_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677783002/bill-gates_abcoz5.jpg")
user4.photo.attach(io: user4_file, filename: "user4.jpg", content_type: "image/jpg")
user4.save!

file3 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672145/don-shetterly-VYZKzvk7qTw-unsplash_vyg8ob.jpg")
bunker = Bunker.new(title: "Blue Bunker", description: "Seattle - USA", location: "Welcome to Blue Bunker! Relax and create lifelong memories at our 7,000 sq ft historic farmhouse mansion. Built 1859, Orchard Hill offers countless amenities, pool, hot tub, fire pit, ping pong table, wood-burning stove, baby grand piano, & so much more.
  Hi-speed Wi-Fi mesh network and dedicated work space. Orchard Hill is the perfect blend of old world charm & the latest technology.", prix: 10_000, user: user4)
bunker.photo.attach(io: file3, filename: "bunker4.jpg", content_type: "image/jpg")
bunker.save!

user5 = User.create(first_name: "Bernard", last_name: "Arnault", email: "BernardArnault@gmail.com", password: "09283382°")
user5_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677782999/bernard-arnault_ov3wgj.jpg")
user5.photo.attach(io: user5_file, filename: "user5.jpg", content_type: "image/jpg")
user5.save!

file4 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677676259/ralph-ravi-kayden-zSG-kd-L6vw-unsplash_jopgpr.jpg")
bunker = Bunker.new(title: "Black Bunker", description: "Honolulu - Hawaï", location: "Welcome to Black Bunker! A Stunning Brand New Home On a Verdant Hillside is Simply Like No Other. This Home Is Located in the Famed Neighborhood Where Hawaii 5-0 was Filmed.
  Enjoy Over 6000 Sq Ft of Living Areas Featuring Walls of Glass, Concrete, Aluminum & Steel in Harmony W/ Teak, Hickory & Other Exotic Woods. Subzero Kitchen Appliances, Toto Bathroom Amenities, and a Bose Surround Sound System Through Out the Entire Home Lists Only a Few of the Epicurean Touches of This Magnificent Sanctuary.", prix: 20_000, user: user5)
bunker.photo.attach(io: file4, filename: "bunker5.jpg", content_type: "image/jpg")
bunker.save!

user6 = User.create(first_name: "Mark", last_name: "Zuckerberg", email: "m.zuckerberg@gmail.com", password: "19820301°")
user6_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677782999/square-Mark-Zuckerberg_Courtesy-Facebook_kq0ymk.jpg")
user6.photo.attach(io: user6_file, filename: "user6.jpg", content_type: "image/jpg")
user6.save!

file5 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677680893/mark-champs-Id2IIl1jOB0-unsplash_ixh2ew.jpg")
bunker = Bunker.new(title: "Yellow Bunker", description: "Auckland - New-Zealand", location: "This Yellow Bunker is an award-winning architectural masterpiece.An elegant interior boasts 6 ultra-luxurious bedrooms worthy of any international five-star resort. Generous indoor living spaces include a chic plunge pool, a tennis court, a playground, and a Cinema room.
  Quiet, super private location close to both Palm Beach and Onetangi Beach. 3 minutes to Ostend, 10 minutes to Oneroa.", prix: 15_000, user: user6)
bunker.photo.attach(io: file5, filename: "bunker6.jpg", content_type: "image/jpg")
bunker.save!

user7 = User.create(first_name: "Alice", last_name: "Walton", email: "a.walton@gmail.com", password: "19932303°")
user7_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677783000/ALW-short_rgzhgi.jpg")
user7.photo.attach(io: user7_file, filename: "user7.jpg", content_type: "image/jpg")
user7.save!

file6 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677680893/huum-NHLS5hOSH0c-unsplash_g8htso.jpg")
bunker = Bunker.new(title: "Grey Bunker", description: "Bab El Oued - Algeria", location: "Start each day with breakfast in your luxury kitchen, then spend the day lounging by the pool or reading in the pool house, pausing for complimentary coffee, tea or mineral water at the guest house.
  Inside its open-concept rooms, Villa Jardin Nomade pairs traditional pieces—Beni Ouarain rugs, incredible artwork—with the modern—arc lamps, wall-to-wall windows—to stunning effect.  ", prix: 25_000, user: user7)
bunker.photo.attach(io: file6, filename: "bunker7.jpg", content_type: "image/jpg")
bunker.save!

user8 = User.create(first_name: "Michael", last_name: "Bloomberg", email: "m.bloomberg@gmail.com", password: "18529389°")
user8_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677782999/Mike_Bloomberg_Headshot_fg8srj.jpg")
user8.photo.attach(io: user8_file, filename: "user8.jpg", content_type: "image/jpg")
user8.save!

file7 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677672145/alex-holzreiter-i7nqRB8Fd0Y-unsplash_om7uof.jpg")
bunker = Bunker.new(title: "Platinium Bunker", description: "São Paulo - Brazil", location: "Welcome to Platinium Bunker ! This property is called Brava Casa, by a material published in Italian magazine, that chose as one of the most beautiful houses in the world. Also considered by the famous architect that designed, Otavio Gabaglia Raja as The Best of Buzios.
  The Brava Casa has 5 large-sized suites, complete, with high standards decoration from Africa, with split air conditioning, ceiling fan, complete bathroom with heated and pressurized water all overlooking the sea of Buzios.", prix: 8_000, user: user8)
bunker.photo.attach(io: file7, filename: "bunker8.jpg", content_type: "image/jpg")
bunker.save!

user9 = User.create(first_name: "Warren", last_name: "Buffett", email: "w.buffett@gmail.com", password: "6979722°")
user9_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677782999/609bbaaee6b49ae53d675cae2aa53ded_sllvqh.jpg")
user9.photo.attach(io: user9_file, filename: "user9.jpg", content_type: "image/jpg")
user9.save!

file8 = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1677681385/adam-winger-To4Yip8rc-Q-unsplash_smnl03.jpg")
bunker = Bunker.new(title: "Ruby Bunker", description: "Punta Cana - Dominican Republic", location: "Welcome to Platinium Bunker ! Hacienda B25 is a large, spacious, 6-bedroom, 6.5-bathroom home located the Hacienda community of Puntacana.
  Right outside the gates, you will find Puntacana Village, a small community that offers 8 restaurants, bars, shops and a pharmacy while a few minutes away you can find Blue Mall with its collection of premium shops and restaurants.", prix: 69_000, user: user9)
bunker.photo.attach(io: file8, filename: "bunker9.jpg", content_type: "image/jpg")
bunker.save!

puts "seeds ok"
