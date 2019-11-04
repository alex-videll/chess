class AddGameToPieceMove < ActiveRecord::Migration[5.2]
  def change
    add_reference :piece_moves, :game, foreign_key: true
  end
end
