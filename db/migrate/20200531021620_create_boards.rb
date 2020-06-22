class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.text :name
      t.text :description
      t.text :category

      t.timestamps
    end
  end
end
