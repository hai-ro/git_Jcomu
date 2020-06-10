class UsersController < ApplicationController
  before_action :move_to_sign_in
  
  def show
    @user = User.find(params[:id])
    @manuals = @user.manuals.includes(:player).order('updated_at DESC').limit(5)
  end
  
  private
  def move_to_sign_in
    redirect_to "/users/sign_in" unless user_signed_in?
  end
end
