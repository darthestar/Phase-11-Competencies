
class CampersController < ApplicationController

  def index

    if params[:campsite_id]
      @campsite = Campsite.find(params[:campsite_id])
      @campers = @campsite.campers
      @title = "Campers bunking in #{@campsite.name}"
    else
      @campers = Camper.all
      @title = "All Campers:"
    end
  end

  def show
    @camper = Camper.find(params[:id])
    @supplies = @camper.supplies
    @title = "Supplies Brought by: #{@camper.name}"

  end
end
