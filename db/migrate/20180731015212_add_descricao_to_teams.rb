class AddDescricaoToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :descricao, :string, limit: 2000
  end
end
