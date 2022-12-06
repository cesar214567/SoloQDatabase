class CreateEloTimestamps < ActiveRecord::Migration[7.0]
  def change
    create_table :elo_timestamps do |t|
      t.integer :elo
      t.references :summoner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
