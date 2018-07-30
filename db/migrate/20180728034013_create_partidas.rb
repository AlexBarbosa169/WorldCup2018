class CreatePartidas < ActiveRecord::Migration[5.1]
  def change
    create_table :partidas do |t|
      t.integer :numero
      t.string :resultado
      t.datetime :data

      t.timestamps
    end
  end
end
