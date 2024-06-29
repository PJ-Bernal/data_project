class MonstersController < ApplicationController
  def index
    @monsters = Monster.page(params[:page]).per(6)
  end

  def show
    @monster = Monster.find_by(name: params[:name])
  end
end
