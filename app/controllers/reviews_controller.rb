class ReviewsController < ApplicationController

  def new
    @location = Location.find(params[:location_id])
    @review = @location.reviews.new
    json_response(@location, @review)
  end

  def create
    @location = Location.find(params[:location_id])
    @review = Review.create!(review_params)
    json_response(@location, @review, :created)
  end

  private
  def review_params
    params.permit(:author, :rating, :content_body)
  end

end
