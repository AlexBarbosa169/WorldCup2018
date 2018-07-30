class GrupoPartida < ApplicationRecord
  belongs_to :group
  belongs_to :partida
end
