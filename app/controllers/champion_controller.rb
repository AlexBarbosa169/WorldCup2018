class ChampionController < ApplicationController
  def champion
  	@champion = Partida.last
  end
end
