# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  @restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category:  ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  @restaurant.save!
  @review = Review.new(
    content: Faker::Lorem.question(word_count: 4),
    rating: rand(5)
  )
  @review.save!
end
