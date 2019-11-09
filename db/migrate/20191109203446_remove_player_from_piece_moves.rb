class RemovePlayerFromPieceMoves < ActiveRecord::Migration[5.2]
  def change
    remove_column :piece_moves, :player_id, :reference
  end
end
