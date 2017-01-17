class ReviewsController < ApplicationController

  def new
  @review = Review.new
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @reviews = @restaurant.reviews.order('created_at desc')

    if @review.save
      redirect_to restaurant_path(@restaurant)
      flash[:notice] = "Review added successfully"
    else
      render 'new'
    end
  end
end

private
    def review_params
      params.require(:review).permit(:body, :rating, :restaurant_id)
    end
