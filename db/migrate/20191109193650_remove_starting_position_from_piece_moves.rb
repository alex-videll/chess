class RemoveStartingPositionFromPieceMoves < ActiveRecord::Migration[5.2]
  def change
    remove_column :piece_moves, :starting_position, :string
  end
end
