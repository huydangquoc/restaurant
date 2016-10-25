class ReviewsController < ApplicationController

  def create
    @food_item = FoodItem.find(params[:food_item_id])
    @review = @food_item.reviews.create(review_params)
    flash[:notice] = "Feeback sent"
    redirect_to food_item_path(@food_item)
  end

  private

  def review_params
    params.require(:review).permit(:score, :reviewer, :feedback)
  end

end
