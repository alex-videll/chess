class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :total_time_limit
      t.integer :time_to_move_piece
      t.timestamp :ending_time
      t.timestamp :starting_time

      t.timestamps
    end
  end
end
