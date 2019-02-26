class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :fen
      t.integer :move_count
      t.timestamps
    end
  end
end
