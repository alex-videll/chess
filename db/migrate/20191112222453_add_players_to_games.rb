class AddPlayersToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference(:games, :white_player, foreign_key: {to_table: :users})
    add_reference(:games, :black_player, foreign_key: {to_table: :users})
  end
end
