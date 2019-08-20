class ReviewsController < ApplicationController


  def new
    @location = Location.find(params[:location_id])
    @review = @location.reviews.new
    json_response(@review)
  end

  def create
    @location = Location.find(params[:location_id])
    @review = @location.reviews.create!(review_params)
    json_response(@review, :created)
  end

  def show
    @location = Location.find(params[:location_id])
    @review = @location.reviews.find(params[:id])
    json_response(@review)
  end

  private
  def review_params
    params.permit(:author, :rating, :content_body)
  end

end
