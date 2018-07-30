class PartidaTeam < ApplicationRecord
  belongs_to :partida
  belongs_to :team
end
