class ReviewsController < ApplicationController

  # creating and saving a new review
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurants_path(@restaurant)

  end

  # process of creating a review
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)

  end

end
