class ReviewsController < ApplicationController

  def search
    @restaurants = Restaurant.all
    @reviews = Review.search(params[:search])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurants = Restaurant.all
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end
  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant)
  end
end


