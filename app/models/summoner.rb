class Summoner < ApplicationRecord
    validates :summoner_name, uniqueness: true 

end
