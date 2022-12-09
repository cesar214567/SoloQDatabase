class GamesController < ApplicationController
    def create
        @game = Game.new(game_params)
        if @game.save
            render json: @game 
        else
            payload = {
                error: "Something has happened",
                status: 400
              }
            render json: payload,:status => 400
        end
    end

    def game_params
        params.require(:game).permit(:champ, :kills, :deaths, :assist, :gold, :damage, :score, :summoner_id,:won,:game_id,:role,:duration_seconds)
    end
end
