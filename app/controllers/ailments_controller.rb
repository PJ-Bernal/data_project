class AilmentsController < ApplicationController
  def index
    @ailments = Ailment.page(params[:page]).per(6)
  end
end
