class LocationsController < ApplicationController
  def index
    @locations = Location.page(params[:page]).per(5)
  end
end
