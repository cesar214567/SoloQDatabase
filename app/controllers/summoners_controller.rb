class SummonersController < ApplicationController
    def index
        @summoners = Summoner.all
        render json: @summoners
    end
    
    def create
        @summoner = Summoner.new(summoner_params)
        puts @summoner
        if @summoner.save
            render json: @summoner 
        else
            payload = {
                error: "Something has happened",
                status: 400
              }
            render json: payload,:status => 400
        end
    end

    def summoner_params
        params.require(:summoner).permit(:name, :summoner_name, :gg_id)
    end

end
