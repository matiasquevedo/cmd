class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :status
      t.float :total
      t.datetime :shippedDate

      t.timestamps
    end
  end
end
