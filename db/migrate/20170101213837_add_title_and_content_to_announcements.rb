class AddTitleAndContentToAnnouncements < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :title, :string
    add_column :announcements, :content, :string
  end
end
