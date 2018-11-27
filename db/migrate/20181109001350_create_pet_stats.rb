class CreatePetStats < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_stats do |t|
      t.integer :pet_id, null: false
      t.integer :stat_id, null: false
      t.integer :value, null: false, default: 0

      t.timestamps
    end
  end
end
