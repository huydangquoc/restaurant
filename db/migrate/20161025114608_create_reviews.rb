class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :food_item, foreign_key: true
      t.string :score
      t.string :feedback

      t.timestamps
    end
  end
end
