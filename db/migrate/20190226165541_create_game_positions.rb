class CreateGamePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_positions do |t|
      t.integer :game_id
      t.string :fen
      t.integer :move_count

      t.timestamps
    end
  end
end
