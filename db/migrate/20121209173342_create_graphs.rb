class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
