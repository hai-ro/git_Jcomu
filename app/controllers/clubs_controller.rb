class ClubsController < ApplicationController
  def index
   @clubs = Club.all
  end
  
  def import
    # fileはtmpに自動で一時保存される
    Club.import(params[:file])
    redirect_to clubs_url
  end
end