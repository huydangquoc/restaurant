class FoodItem < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, :section, :price, presence: true
  validates :price, numericality: true

  def image_url
    if remote_image_url.present?
      remote_image_url
    else
      "http://loremflickr.com/320/240/#{CGI.escape name}"
    end
  end

  def average_review_score
    scores = self.reviews.pluck(:score)
    average_score = scores.inject{ |sum, el| sum + el }.to_f / scores.size
    return average_score.round(2)
  end

end
