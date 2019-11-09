class AddYPositionToPieceMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :piece_moves, :y_position, :integer
  end
end
