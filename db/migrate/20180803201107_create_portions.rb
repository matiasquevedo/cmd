class CreatePortions < ActiveRecord::Migration[5.1]
  def change
    create_table :portions do |t|
      t.references :food, foreign_key: true
      t.references :sale, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
