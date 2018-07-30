class Group < ApplicationRecord
  belongs_to :tournament

  has_many :group_teams
  has_many :teams, through: :group_teams

  has_many :grupo_partidas
  has_many :partidas, through: :grupo_partidas

end
