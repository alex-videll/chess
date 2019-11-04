class AddPlayerToPieceMove < ActiveRecord::Migration[5.2]
  def change
    add_reference :piece_moves, :player, foreign_key: true
  end
end
