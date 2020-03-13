sapporo = Club.find(1)
sapporo.abbreviation = "札幌"
sapporo.abbreviation = Club.where(abbreviation: sapporo.abbreviation).first_or_initialize
sapporo.abbreviation.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
