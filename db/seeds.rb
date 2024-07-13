require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Bag.destroy_all
User.destroy_all


user1 = User.create!(
  name: 'Valentin',
  email: 'user1@exemple.com',
  password: 'password1',
  password_confirmation: 'password1',
  phone_number: '0767838453',
  address: '28 chemin des jonquilles 39160 Saint-Amour, France',

)


Bag.create!(
  brand: 'Samsonite',
  state: 'Neuf',
  capacity: 40,
  usage: 'Business',
  address: 'Place des terreaux, 69001 Lyon, France',
  weight: 3.5,
  daily_price: 10.0,
  user: user1,
  image: 'https://images.unsplash.com/photo-1718702662411-11d9672eb179?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Bag.create!(
  brand: 'American Tourister',
  state: 'Bon',
  capacity: 50,
  usage: 'Loisirs',
  address: 'hotel de ville 75004 Paris, France',
  weight: 4.0,
  daily_price: 10.0,
  user: user1,
  image: 'https://images.unsplash.com/photo-1708403120467-1715bb6840df?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Bag.create!(
  brand: 'TravelPro',
  state: 'Excellent',
  capacity: 60,
  usage: 'Aventure',
  address: 'marseille, France',
  weight: 4.5,
  daily_price: 10.0,
  user: user1,
  image: 'https://plus.unsplash.com/premium_photo-1684407616508-b9e82c8bc8a0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Bag.create!(
  brand: 'Delsey',
  state: 'Normal',
  capacity: 55,
  usage: 'Business',
  address: 'corse, France',
  weight: 5.0,
  daily_price: 12.0,
  user: user1,
  image: 'https://images.unsplash.com/photo-1564209906116-fb6887675069?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Bag.create!(
  brand: 'Victorinox',
  state: 'Excellent',
  capacity: 70,
  usage: 'Loisirs',
  address: 'Paris',
  weight: 6.0,
  daily_price: 18.0,
  user: user1,
  image: 'https://images.unsplash.com/photo-1593032517656-8003cc4c8373?q=80&w=1926&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Bag.create!(
  brand: 'Briggs & Riley',
  state: 'Neuf',
  capacity: 80,
  usage: 'Aventure',
  address: 'Vannes',
  weight: 6.0,
  daily_price: 25.0,
  user: user1,
  image: 'https://images.unsplash.com/photo-1718702662411-11d9672eb179?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

puts "Seed data has been successfully created!"
