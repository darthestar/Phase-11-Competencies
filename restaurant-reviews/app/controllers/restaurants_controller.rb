class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.order('name asc')
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.all
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(secure_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
      flash[:notice] = "Restaurant added successfully"
    else
      render 'new'
    end
  end
end

private
  def secure_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description)
  end
