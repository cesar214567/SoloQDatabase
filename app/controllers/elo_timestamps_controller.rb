class EloTimestampsController < ApplicationController
    def create
        @elo_timestamp = EloTimestamp.new(elo_timestamp_params)
        if @elo_timestamp.save
            render json: @elo_timestamp 
        else
            payload = {
                error: "Something has happened",
                status: 400
              }
            render json: payload,:status => 400
        end
    end

    def elo_timestamp_params
        params.require(:elo_timestamp).permit(:elo, :summoner_id)
    end
end
