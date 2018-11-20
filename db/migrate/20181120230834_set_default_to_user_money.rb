class SetDefaultToUserMoney < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :money, :integer, default: 0
  end
end
