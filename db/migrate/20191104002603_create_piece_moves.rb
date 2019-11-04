class CreatePieceMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :piece_moves do |t|
      t.string :notation
      t.integer :order
      t.string :starting_position
      t.string :ending_position_string

      t.timestamps
    end
  end
end
