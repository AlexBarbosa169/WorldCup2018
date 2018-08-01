class AddContinenteToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :continente, :string, limit: 100
  end
end
