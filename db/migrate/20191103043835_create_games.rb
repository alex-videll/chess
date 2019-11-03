class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :move_time_limit
      t.integer :game_time_limit

      t.timestamps
    end
  end
end
