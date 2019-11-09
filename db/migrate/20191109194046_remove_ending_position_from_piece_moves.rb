class RemoveEndingPositionFromPieceMoves < ActiveRecord::Migration[5.2]
  def change
    remove_column :piece_moves, :ending_position_string, :string
  end
end
