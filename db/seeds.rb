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
User.destroy_all

user1 = User.create!(
  email: 'user1@exemple.com',
  password: 'password1',
  password_confirmation: 'password1'
)

user2 = User.create!(
  email: 'user2@exemple.com',
  password: 'password2',
  password_confirmation: 'password2'
)

Bag.create!(
  brand: 'Samsonite',
  state: 'Neuf',
  capacity: 40,
  usage: 'Business',
  address: '37 avenue Trudaine, 75009 Paris, France',
  daily_price: 10.0,
  user: user1
)

Bag.create!(
  brand: 'American Tourister',
  state: 'Bon',
  capacity: 50,
  usage: 'Loisirs',
  address: '37 avenue Trudaine, 75009 Paris, France',
  daily_price: 10.0,
  user: user1
)

Bag.create!(
  brand: 'TravelPro',
  state: 'Excellent',
  capacity: 60,
  usage: 'Aventure',
  address: '42 rue de la Santé, 75014 Paris, France',
  daily_price: 10.0,
  user: user2
)

Bag.create!(
  brand: 'Delsey',
  state: 'Normal',
  capacity: 55,
  usage: 'Business',
  address: '42 rue de la Santé, 75014 Paris, France',
  daily_price: 12.0,
  user: user2
)

Bag.create!(
  brand: 'Victorinox',
  state: 'Excellent',
  capacity: 70,
  usage: 'Leisure',
  address: '37 avenue Trudaine, 75009 Paris, France',
  daily_price: 18.0,
  user: user1
)

Bag.create!(
  brand: 'Briggs & Riley',
  state: 'Neuf',
  capacity: 80,
  usage: 'Aventure',
  address: '42 rue de la Santé, 75014 Paris, France',
  daily_price: 25.0,
  user: user2
)

puts "Seed data has been successfully created!"
