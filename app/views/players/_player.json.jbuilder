json.extract! player, :id, :nome, :numero, :nacionalidade, :urlImagem, :descricao, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)