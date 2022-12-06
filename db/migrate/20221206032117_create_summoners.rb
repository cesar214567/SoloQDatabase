class CreateSummoners < ActiveRecord::Migration[7.0]
  def change
    create_table :summoners do |t|
      t.string :name
      t.string :summoner_name

      t.timestamps
    end
  end
end
