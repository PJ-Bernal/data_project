class MonstersController < ApplicationController
  def index
    @monsters = Monster.page(params[:page]).per(6)

  end
end
