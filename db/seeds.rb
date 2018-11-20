# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create!([
  name: 'Moldy Peaches',
  description: "These peaches have been left out for quite a while. Sadly, they've developed mold."
])

species = Species.create!([
  { name: 'Goat' },
  { name: 'Lemur' }
])

colors = Color.create!([
  { name: 'Pink' },
  { name: 'Purple' }
])

attributes = Attribute.create!([
  { name: 'HP' },
  { name: 'PP' },
  { name: 'INT' },
  { name: 'STR' },
  { name: 'LCK' }
])

slots = Slot.create!([
  { name: 'Head' },
  { name: 'Eyes' },
  { name: 'Neck' },
  { name: 'Arms' },
  { name: 'Chest' },
  { name: 'Legs' },
  { name: 'Feet' }
])

accessories = Accessory.create!([
  { slot_id: 1, name: 'Beanie' },
  { slot_id: 2, name: 'Sunglasses' },
  { slot_id: 4, name: 'Fingerless Gloves' },
  { slot_id: 6, name: 'Black Cutoffs' },
  { slot_id: 5, name: 'Gigantic Sweater' }
])


Pet.create!(user_id: 1, species_id: 1, name: 'Pinky', color_id: 1)