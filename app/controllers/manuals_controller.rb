class ManualsController < ApplicationController
  def new 
    @player = Player.find(params[:player_id])
    @manual = Manual.new
    @manual.player_id = @player.id
  end
  
  def create
    @manual = Manual.create(create_params)
  end
  
  def edit
    @manual = Manual.find(params[:id])
    @player = @manual.player
  end
  
  def update
    manual = Manual.find(params[:id])
    @player = manual.player
    manual.update(update_params)
  end
  
  def destroy
    @manual = Manual.find(params[:id])
    @manual.destroy
  end
  
  private
  def create_params
    params.require(:manual).permit(:player_id, :text).merge(user_id: current_user.id)
  end
  
  def update_params
    params.require(:manual).permit(:text)
  end
end
