class AddMoreFieldsToFoodItems < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :food_type, :string
    add_column :food_items, :food_view, :integer
  end
end
