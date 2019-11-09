class AddPieceToPieceMove < ActiveRecord::Migration[5.2]
  def change
    add_reference :piece_moves, :piece, foreign_key: true
  end
end
