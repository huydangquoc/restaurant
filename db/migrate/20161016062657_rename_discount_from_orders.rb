class RenameDiscountFromOrders < ActiveRecord::Migration[5.0]
  def change
  	rename_column :orders, :discount, :discount_code
    change_column :orders, :discount_code, :string
  end
end
