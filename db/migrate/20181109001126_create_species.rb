class CreateSpecies < ActiveRecord::Migration[5.1]
  def change
    create_table :species do |t|
      t.string :name, null: false, uniqueness: true

      t.timestamps
    end
  end
end
