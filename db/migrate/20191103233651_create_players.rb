class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.float :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
