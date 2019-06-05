# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# name = Faker::Movies::HarryPotter.character
# address = Faker::Movies::HarryPotter.location
# phone = Faker::Movies::HarryPotter.house
# cat = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  name = Faker::Movies::HarryPotter.character
  address = Faker::Movies::HarryPotter.location
  phone = Faker::Movies::HarryPotter.house
  cat = ["chinese", "italian", "japanese", "french", "belgian"]
  Restaurant.new(name: name, address: address, phone_number: phone, category: cat.sample).save
end
