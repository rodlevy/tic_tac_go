class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.boolean :turn
      t.text :table, array: true
    end
  end
end
