class AddColumnToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :bronze, :boolean
  end
end
