class AilmentsController < ApplicationController
  def index
    @ailments = Ailment.page(params[:page]).per(6)
  end

  def show
    @ailment = Ailment.find_by(name: params[:name])
  end 
end
