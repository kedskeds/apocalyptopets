class CreateAccessories < ActiveRecord::Migration[5.1]
  def change
    create_table :accessories do |t|
      t.integer :slot_id, null: false
      t.string  :name, null: false

      t.timestamps
    end
  end
end
