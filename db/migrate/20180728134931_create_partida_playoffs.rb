class CreatePartidaPlayoffs < ActiveRecord::Migration[5.1]
  def change
    create_table :partida_playoffs do |t|
      t.references :partida, foreign_key: true
      t.references :playoff, foreign_key: true

      t.timestamps
    end
  end
end
