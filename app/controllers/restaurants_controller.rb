class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new #once u embed form on show page
  end

  def new
    @restaurant = Restaurant.new #a new restaurant to use in the empty form
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant) #show
      # redirect_to @restaurant - just this also works!
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
