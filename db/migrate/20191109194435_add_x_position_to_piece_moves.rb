class AddXPositionToPieceMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :piece_moves, :x_position, :integer
  end
end
