class TravelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @travels= Travel.all
  end

  def show
    @travel = Travel.find(params[:id])
  end

end
