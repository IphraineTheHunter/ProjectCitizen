class AddStreamToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :stream_id, :integer
  end
end
