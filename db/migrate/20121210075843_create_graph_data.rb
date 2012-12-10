class CreateGraphData < ActiveRecord::Migration
  def change
    create_table :graph_data do |t|

      t.timestamps
    end
  end
end
