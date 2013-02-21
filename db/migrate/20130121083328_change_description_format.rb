class ChangeDescriptionFormat < ActiveRecord::Migration
  def up
    change_column :graphs, :description, :text
  end

  def down
    change_column :graphs, :description, :string
  end
end
