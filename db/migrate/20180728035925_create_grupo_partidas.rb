class CreateGrupoPartidas < ActiveRecord::Migration[5.1]
  def change
    create_table :grupo_partidas do |t|
      t.references :group, foreign_key: true
      t.references :partida, foreign_key: true

      t.timestamps
    end
  end
end
