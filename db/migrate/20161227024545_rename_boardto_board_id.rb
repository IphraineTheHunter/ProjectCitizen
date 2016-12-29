class RenameBoardtoBoardId < ActiveRecord::Migration[5.0]
  rename_column :streams, :board, :board_id
end
