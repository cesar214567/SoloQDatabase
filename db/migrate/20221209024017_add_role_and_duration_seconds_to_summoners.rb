class AddRoleAndDurationSecondsToSummoners < ActiveRecord::Migration[7.0]
  def change
    add_column :summoners, :duration_seconds, :integer
    add_column :summoners, :role, :string
  end
end
