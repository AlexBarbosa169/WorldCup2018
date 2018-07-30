class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :pais
      t.string :urlBandeira

      t.timestamps
    end
  end
end
