json.extract! tournament, :id, :titulo, :pais, :descricao, :data, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
