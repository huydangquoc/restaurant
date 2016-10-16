class HomeController < ApplicationController
  
  def index
  end

  def contact_us
	end

	def menu
		if params[:search]
			@food_items = FoodItem.where("lower(name) LIKE ?", "%#{params[:search]}%".downcase)
		else
			@food_items = FoodItem.all
		end

		if params[:section] && params[:section] != ""
			@food_items = @food_items.where section: params[:section]
		end

		if params[:food_type] && params[:food_type] != ""
			@food_items = @food_items.where food_type: params[:food_type]
		end

		if params[:sort_column]
			@food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
		end 
	end
	
end
