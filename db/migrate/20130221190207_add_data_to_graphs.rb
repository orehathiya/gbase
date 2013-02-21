class AddDataToGraphs < ActiveRecord::Migration
  def change
    add_column :graphs, :data, :text
  end
end
