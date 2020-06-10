class PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id]) #playerテーブルの中で、idが997のインスタンスを取得
    @manuals = @player.manuals.order('updated_at DESC').page(params[:page]).per(5) #取得されたplayerのidとPlayer_idが一致するmanualテーブルのインスタンスを取得
    @like = Like.new()
  end

end
