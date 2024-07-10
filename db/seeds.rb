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
Bag.destroy_all
User.destroy_all

user1 = User.create!(
  name: 'Asya',
  email: 'user1@exemple.com',
  password: 'password1',
  password_confirmation: 'password1',
  phone_number: '06 79 90 12 34',
  address: '37 avenue Trudaine, 75009 Paris, France'
)

user2 = User.create!(
  name: 'Nicolas',
  email: 'user2@exemple.com',
  password: 'password2',
  password_confirmation: 'password2',
  phone_number: '07 78 90 12 34',
  address: '13 place de la Poissonnerie, 56000 Vannes, France'
)

Bag.create!(
  brand: 'Samsonite',
  state: 'Neuf',
  capacity: 40,
  usage: 'Business',
  address: 'Paris, France',
  weight: 3.5,
  daily_price: 10.0,
  user: user1
)

Bag.create!(
  brand: 'American Tourister',
  state: 'Bon',
  capacity: 50,
  usage: 'Loisirs',
  address: 'Paris, France',
  weight: 4.0,
  daily_price: 10.0,
  user: user1
)

Bag.create!(
  brand: 'TravelPro',
  state: 'Excellent',
  capacity: 60,
  usage: 'Aventure',
  address: 'Vannes, France',
  weight: 4.5,
  daily_price: 10.0,
  user: user2
)

Bag.create!(
  brand: 'Delsey',
  state: 'Normal',
  capacity: 55,
  usage: 'Business',
  address: 'Vannes, France',
  weight: 5.0,
  daily_price: 12.0,
  user: user2
)

Bag.create!(
  brand: 'Victorinox',
  state: 'Excellent',
  capacity: 70,
  usage: 'Loisirs',
  address: 'Paris, France',
  weight: 6.0,
  daily_price: 18.0,
  user: user1
)

Bag.create!(
  brand: 'Briggs & Riley',
  state: 'Neuf',
  capacity: 80,
  usage: 'Aventure',
  address: 'Vannes, France',
  weight: 6.0,
  daily_price: 25.0,
  user: user2
)

puts "Seed data has been successfully created!"
