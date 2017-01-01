class AddMoneyDefaultToUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :money, :integer, :default => 300
  end
end
