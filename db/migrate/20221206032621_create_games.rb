class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :champ
      t.integer :kills
      t.integer :deaths
      t.integer :assist
      t.integer :gold
      t.integer :damage
      t.float :score
      t.references :summoner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
