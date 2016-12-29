class AddTitleToStreams < ActiveRecord::Migration[5.0]
  def change
    add_column :streams, :title, :string
  end
end
