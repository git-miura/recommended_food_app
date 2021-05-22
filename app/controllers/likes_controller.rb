class LikesController < ApplicationController

  def create
    current_user.likes.create!(food_id: params[:food_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.likes.find_by(post_id: params[:food_id]).destroy!
    edirect_back(fallback_location: root_path)
  end

end
