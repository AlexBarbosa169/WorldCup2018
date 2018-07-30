class CreatePlayoffs < ActiveRecord::Migration[5.1]
  def change
    create_table :playoffs do |t|
      t.string :fase
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
