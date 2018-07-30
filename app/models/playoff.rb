class Playoff < ApplicationRecord
  belongs_to :tournament  

  has_many :partida_playoffs
  has_many :partidas, through: :partida_playoffs
end
