class PetAccessories < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_accessories do |t|
      t.integer :pet_id, null: false
      t.integer :accessory_id, null: false

      t.timestamps
    end
  end
end
