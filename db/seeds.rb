# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning all...'
Ingredient.destroy_all

puts 'Creating ingredient...'
Ingredient.create!(name: 'lemon')
Ingredient.create!(name: 'ice')
Ingredient.create!(name: 'mint leaves')

puts 'Creating cocktails...'
Cocktail.create!(name: 'Mint Julep')
Cocktail.create!(name: 'Whiskey Sour')
Cocktail.create!(name: 'Mojito')

puts 'Creating doses...'
Dose.create!(cocktail_id: 'Mint Julep', ingredient_id: 'lemon', description: 'super cocktail')
