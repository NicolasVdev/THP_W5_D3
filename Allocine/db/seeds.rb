# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
100.times do
  film = Movie.create!(name: Faker::Movie.title, year: Faker::Date.between(from: 1900, to: 2020), genre: ["action", "horreur", "comédie", "drame"].sample, synopsis: Faker::Lorem.paragraph_by_chars(number: 200), director: Faker::FunnyName.two_word_name, allocine_rating: sprintf("%.1f", Faker::Number.between(from: 0.0, to: 5.0)) , already_seen: false, my_rating: nil)
end