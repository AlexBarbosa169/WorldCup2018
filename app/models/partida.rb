class Partida < ApplicationRecord
  has_many :grupo_partidas
  has_many :grupos, through: :grupo_partidas

  has_many :partida_teams
  has_many :teams, through: :partida_teams
end
