# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Pet.create!(
    name:     Faker::Cannabis.brand,
    species:  Pet::ALLOWED_SPECIES.sample,
    address:  Faker::Address.street_address,
    found_on: Date.today - rand(1..5).day
  )
end
