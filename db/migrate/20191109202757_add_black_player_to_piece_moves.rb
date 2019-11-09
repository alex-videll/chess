class AddBlackPlayerToPieceMoves < ActiveRecord::Migration[5.2]
  def change
    add_reference(:piece_moves, :black_player, foreign_key: {to_table: :users})
  end
end
