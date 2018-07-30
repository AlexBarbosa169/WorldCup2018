class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :nome
      t.integer :numero
      t.string :nacionalidade
      t.string :urlImagem
      t.string :descricao, limit: 1000
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
