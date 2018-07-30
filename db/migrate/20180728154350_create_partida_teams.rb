class CreatePartidaTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :partida_teams do |t|
      t.references :partida, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
