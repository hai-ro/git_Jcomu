class ClubsController < ApplicationController
  
  def index
   all_clubs = Club.all
   @clubs_odd = all_clubs.each_slice(2).map(&:first)
   @clubs_even = all_clubs.each_slice(2).map(&:last)
  end
  
  def show
    @club = Club.find(params[:id])
    @players = @club.players
    @gks = @players.where(position: "GK")
    @dfs = @players.where(position: "DF")
    @mfs = @players.where(position: "MF")
    @fws = @players.where(position: "FW")
  end
  
  private
  def import
    # fileはtmpに自動で一時保存される
    Club.import(params[:file])
    redirect_to clubs_url
  end
end