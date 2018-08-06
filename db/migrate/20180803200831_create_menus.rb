class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
