class DropRegistrations < ActiveRecord::Migration[5.0]
  def up
	drop_table :registrations
  end
end
