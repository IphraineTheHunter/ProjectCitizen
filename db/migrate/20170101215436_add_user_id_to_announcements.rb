class AddUserIdToAnnouncements < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :user_id, :integer
  end
end
