# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Customer.create(name: Faker::FunnyName.name)
end

3.times do
  Store.create(name: Faker::OnePiece.location)
end

3.times do
  Deal.create(category: Faker::App.name, description: Faker::BojackHorseman.quote, store_id: rand(1..3))
end

5.times do
  StampCard.create(customer_id: rand(1..5), deal_id: rand(1..3), current_points: rand(1..3))
end