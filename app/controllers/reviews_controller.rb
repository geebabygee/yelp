class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  # answers the submit button
  def create
    @review = Review.new(review_params)
    # assign the restaurant
    @review.restaurant = @restaurant
    if @review.save
      # redirect_to restaurant_show
      # redirect_to @review.restaurant
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    # raise
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
