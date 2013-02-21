class DropGraphDataTable < ActiveRecord::Migration
  def up
    drop_table :graph_data
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
