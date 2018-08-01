class ChampionController < ApplicationController
  def champion
  	@champion = Partida.last.teams.first
  end
end
