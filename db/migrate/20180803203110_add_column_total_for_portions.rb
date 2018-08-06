class AddColumnTotalForPortions < ActiveRecord::Migration[5.1]
  def change
  	add_column :portions, :total, :float
  end
end
