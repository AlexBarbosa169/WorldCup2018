class Team < ApplicationRecord
  has_many :group_teams
  has_many :groups, through: :group_teams

  has_many :partida_teams
  has_many :partidas, through: :partida_teams

  has_one :player

end


