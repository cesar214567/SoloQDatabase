class AddGgIdToSummoners < ActiveRecord::Migration[7.0]
  def change
    add_column :summoners, :gg_id, :string
  end
end
