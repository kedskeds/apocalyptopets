class PetsAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :pets_attributes do |t|
      t.integer :pet_id, null: false
      t.integer :attribute_id, null: false

      t.timestamps
    end
  end
end
