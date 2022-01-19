class AddNumberInStockToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :number_in_stock, :integer, default: 1
  end
end
