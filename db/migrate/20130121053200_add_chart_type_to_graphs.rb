class AddChartTypeToGraphs < ActiveRecord::Migration
  def change
    add_column :graphs, :chart_type, :integer
  end
end
