# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Rhum Coca")
Cocktail.create(name: "Pastis")
Cocktail.create(name: "Panaché")

Dose.create(name: "6 cl")
Dose.create(name: "10 cl")
Dose.create(name: "5 cl")
Dose.create(name: "15 cl")
Dose.create(name: "8 cl")
Dose.create(name: "4 cl")

