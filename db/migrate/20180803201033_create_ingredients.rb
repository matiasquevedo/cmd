class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.float :quantity
      t.float :total_price
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
