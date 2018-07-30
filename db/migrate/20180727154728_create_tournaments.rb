class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :titulo
      t.string :pais
      t.string :descricao
      t.datetime :data

      t.timestamps
    end
  end
end
