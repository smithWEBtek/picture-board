class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :image, default: 'https://thenounproject.com/term/image-default/2935784'
      
      t.timestamps
    end
  end
end
