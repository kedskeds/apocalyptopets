class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.integer :user_id, null: false
      t.integer :species_id, null: false
      t.string :name, null: false, uniqueness: true
      t.integer :color_id, null: false

      t.timestamps
    end
  end
end
