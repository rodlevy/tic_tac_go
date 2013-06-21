class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :player_1
      t.integer :player_2
      t.integer :game_id
      t.string :turn , :default => "player1" 
      t.text :table, array: true
    end
  end
end
