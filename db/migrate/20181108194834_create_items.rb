class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name, null: false, uniqueness: true
      t.string :description, null: false

      t.timestamps
    end
  end
end
