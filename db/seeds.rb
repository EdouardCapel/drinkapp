# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'CLEAN UP'
Cocktail.destroy_all
Glass.destroy_all
Ingredient.destroy_all
Dose.destroy_all

p 'CREATE NEW DB'

#Glass
hbglass = Glass.create(name: "High Ball")
stglass = Glass.create(name: "Short Tumbler")
cmglass = Glass.create(name: "Copper Mug")
mcglass = Glass.create(name: "Martini Coupe")

#Cocktail
mojito = Cocktail.create(name: "Mojito", glass: hbglass)
oldfashioned = Cocktail.create(name: "Old'Fashioned", glass: stglass)
moscowmule = Cocktail.create(name: "Moscow Mûle", glass: cmglass)
moonwalk = Cocktail.create(name: "MoonWalk", glass: mcglass)

#Alcool
rum = Ingredient.create(name: "Dark Rum", alcool: true)
bourbon = Ingredient.create(name: "Bourbon Whiskey", alcool: true)
vodka = Ingredient.create(name: "Vodka", alcool: true)
grandmarnier = Ingredient.create(name: "Grand Marnier", alcool: true)
sparkling = Ingredient.create(name: "Sparkling WIne", alcool: true)

#Ingredient
#Mojito
mint = Ingredient.create(name: "Mint Leave")
sugar = Ingredient.create(name: "Sugar")
clubsoda = Ingredient.create(name: "Club Soda")
lime = Ingredient.create(name: "Lime")
ice = Ingredient.create(name: "Ice Cube")
#Dose
Dose.create(description: "4 Fresh mint leaves", cocktail: mojito, ingredient: mint)
Dose.create(description: "2 Spoon of sugar", cocktail: mojito, ingredient: sugar)
Dose.create(description: "1oz. Dark rum", cocktail: mojito, ingredient: rum)
Dose.create(description: "1/2 Cup of chilled soda", cocktail: mojito, ingredient: clubsoda)
Dose.create(description: "Lime slices", cocktail: mojito, ingredient: lime)
Dose.create(description: "4 Ice cubes", cocktail: mojito, ingredient: ice)

#OldFash
syrupcitrus = Ingredient.create(name: "Citrus Syrup")
angostura = Ingredient.create(name: "Angostura")
water = Ingredient.create(name: "Water")
zestorange = Ingredient.create(name: "Orange Zest")
#Dose
Dose.create(description: "3/4oz. Citrus syrup", cocktail: oldfashioned, ingredient: syrupcitrus)
Dose.create(description: "3 Drops of angostura", cocktail: oldfashioned, ingredient: angostura)
Dose.create(description: "1/2oz. Water", cocktail: oldfashioned, ingredient: water)
Dose.create(description: "1 Slice of orange and zest", cocktail: oldfashioned, ingredient: zestorange)
Dose.create(description: "2oz. American whiskey bourbon", cocktail: oldfashioned, ingredient: bourbon)

#MoscowMule
gingerbeer = Ingredient.create(name: "Ginger Beer")
Dose.create(description: "1/2oz. Fresh lime juice", cocktail: moscowmule, ingredient: lime)
Dose.create(description: "1 Cup of ginger beer", cocktail: moscowmule, ingredient: gingerbeer)
Dose.create(description: "2oz. Vodka", cocktail: moscowmule, ingredient: vodka)
Dose.create(description: "4 Ice cubes", cocktail: moscowmule, ingredient: ice)

#MoonWalk
grapefruit = Ingredient.create(name: "Grapefruit Juice")
rosewater = Ingredient.create(name: "Rose Water")
#Dose
Dose.create(description: "1oz. Fresh grapefruit juice", cocktail: moonwalk, ingredient: grapefruit)
Dose.create(description: "1oz. Grand marnier orange liqueur", cocktail: moonwalk, ingredient: grandmarnier)
Dose.create(description: "3 Drops of rose water", cocktail: moonwalk, ingredient: rosewater)
Dose.create(description: "1/2 Cup of sparkling wine", cocktail: moonwalk, ingredient: sparkling)








