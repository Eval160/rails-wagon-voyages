class FavoritesController < ApplicationController
  def create
    travel = Travel.find(params[:travel_id])
    Favorite.create(travel: travel, user: current_user)
    redirect_to travel_path(travel)
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_to travel_path(favorite.travel)
  end
end
