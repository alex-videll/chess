class AddBlackAndWhitePlayersToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference(:players, :white_player, foreign_key: {to_table: :users})
    add_reference(:players, :black_player, foreign_key: {to_table: :users})
  end
end
