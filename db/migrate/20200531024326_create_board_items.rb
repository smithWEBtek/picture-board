class CreateBoardItems < ActiveRecord::Migration[5.2]
  def change
    create_table :board_items do |t|
      t.integer :board_id
      t.integer :item_id

      t.timestamps
    end
  end
end
