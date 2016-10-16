class AddDiscountToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :discount, :boolean
  end
end
