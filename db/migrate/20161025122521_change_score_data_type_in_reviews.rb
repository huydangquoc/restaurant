class ChangeScoreDataTypeInReviews < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :score, 'integer USING CAST(score AS integer)'
  end
end
