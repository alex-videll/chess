class AddResultToGame < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :result, foreign_key: true
  end
end
