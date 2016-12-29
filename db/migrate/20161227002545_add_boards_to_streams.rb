class AddBoardsToStreams < ActiveRecord::Migration[5.0]
  def change
    add_column :streams, :board, :int
  end
end
