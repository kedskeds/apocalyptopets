class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
      t.string :name, null: false, uniqueness: true

      t.timestamps
    end
  end
end
