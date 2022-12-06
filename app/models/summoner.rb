class Summoner < ApplicationRecord
    validates :summoner_name, uniqueness: true 
    has_many :games
    has_many :elo_timestamps
end
