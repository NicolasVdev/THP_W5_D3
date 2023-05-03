# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create(first_name: "jean", email:"jean@jean.jean")
# User.create(first_name: "paul", email:"paul@paul.paul")
# puts "Deux utilisateurs ont été créés"
require 'faker'
require 'table_print'
100.times do
  user = User.create!(first_name: Faker::Name.first_name, email: Faker::Internet.email)
end