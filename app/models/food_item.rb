class FoodItem < ApplicationRecord
	validates :name, :section, :price, presence: true
	validates :price, numericality: true

	def image_url
		if remote_image_url.present?
			remote_image_url
		else
			"http://loremflickr.com/320/240/#{CGI.escape name}"
		end
	end
end
