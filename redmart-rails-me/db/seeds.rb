# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require './app/models/user'
require 'faker'

(0..50).each do |i|
  User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email ,
  password_digest: Faker::Internet.password,
  cc_number: Faker::Business.credit_card_number,
  delivery_address: Faker::Address.street_address
  )
end
