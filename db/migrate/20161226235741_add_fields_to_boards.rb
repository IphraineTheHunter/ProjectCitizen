class AddFieldsToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :name, :string
  end
end
