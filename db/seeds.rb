# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create!([
  name: 'Moldy Peaches'
])

species = Species.create!([
  { name: 'Goat' },
  { name: 'Lemur' }
])

colors = Color.create!([
  { name: 'Pink' },
  { name: 'Purple' }
])

attributes = Attributes.create!([
  { name: 'HP' },
  { name: 'PP' },
  { name: 'INT' },
  { name: 'STR' },
  { name: 'LCK' }
])

accessories = Accessories.create!([
  { name: 'Beanie' },
  { name: 'Sunglasses' },
  { name: 'Fingerless Gloves' },
  { name: 'Black Cutoffs' },
  { name: 'Gigantic Sweater' }
])

slots = Slots.create!([
  { name: 'Head' },
  { name: 'Eyes' },
  { name: 'Neck' },
  { name: 'Arms' },
  { name: 'Chest' },
  { name: 'Legs' },
  { name: 'Feet' }
])

Pets.create!(user_id: 1, species_id: 1, name: 'Pinky', color_id: 1)