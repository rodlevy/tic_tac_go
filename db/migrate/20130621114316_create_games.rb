class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string  :title
      t.integer :winner
      t.boolean :draw
    end
  end
end
