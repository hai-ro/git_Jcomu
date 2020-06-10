class LikesController < ApplicationController
  def create
    @manual = Manual.find(params[:manual_id])
    @like = Like.new(manual_id: params[:manual_id], user_id: current_user.id)
    @like.save
    redirect_to player_path(@manual.player_id)
  end
  
  def destroy
    @manual = Manual.find(params[:manual_id])
    @like = Like.find_by(manual_id: params[:manual_id], user_id: current_user.id)
    @like.destroy
    redirect_to player_path(@manual.player.id)
  end
  
  private
  def like_params
    params.require(:like).permit(:post_id, :user_id)
  end
end
