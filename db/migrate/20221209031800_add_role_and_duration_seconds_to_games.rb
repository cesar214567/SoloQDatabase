class AddRoleAndDurationSecondsToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :duration_seconds, :integer
    add_column :games, :role, :string
  end
end
