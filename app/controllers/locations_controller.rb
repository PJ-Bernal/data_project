class LocationsController < ApplicationController
  def index
    @locations = Location.page(params[:page]).per(5)
  end

  def show
    @location = Location.find_by(name: params[:name])
  end 
end
