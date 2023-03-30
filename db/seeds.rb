# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding database tables"

strength = ["Strong","Weak","Average"]

puts "Seeding Hero table"

hero1 = Hero.create(name:"Kamala Khan",supername:"Ms.Marvel")

hero2 = Hero.create(name:"Doreen Green",supername:"Squirel Girl")

hero3 = Hero.create(name:"Gwen Stacy",supername:"Spider-Gwen")

hero4 = Hero.create(name:"Diana Prince",supername:"Wonder Woman",)

hero5 = Hero.create(name:"Clark Kent",supername:"Superman")

hero6 = Hero.create(name:"Barry Allen",supername:"The Flash")

hero7 = Hero.create(name:"Kara Danvers",supername:"Supergirl")

hero8 = Hero.create(name:"Arthur Curry",supername:"Aquaman")

hero9 = Hero.create(name:"Natasha Romanoff",supername:"Black Widow")

hero10 = Hero.create(name:"Perter Parker",supername:"Spider-Man")
puts "Seeding Power Table"

power1 = Power.create(name:"telekinesis", description:"gives the wielder the ability to move and manipulate objects with their mind")

power2 = Power.create(name:"elemental control", description:"gives the wielder the ability to manipulate and control the elements such as fire, water, air, and earth")

power3 = Power.create(name:"time manipulation", description:"gives the wielder the ability to manipulate time, including time travel, time loops, and time stopping")

power4 = Power.create(name:"invisibility", description:"gives the wielder the ability to render themselves invisible to the naked eye, making them undetectable")

power5 = Power.create(name:"shape-shifting", description:"gives the wielder the ability to transform their physical form into that of another being, whether it be animal or humanoid")
puts "Seeding Hero Powers Table"

15.times do
    HeroPower.create(hero_id: rand(1..10), power_id: rand(1..5), strength: strength.sample)
end

puts "End of Seeding"
