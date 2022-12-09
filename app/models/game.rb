class Game < ApplicationRecord
  belongs_to :summoner
  validates :summoner_id, uniqueness: { scope: :game_id }

end
