class AddReviewerToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :reviewer, :string
  end
end
