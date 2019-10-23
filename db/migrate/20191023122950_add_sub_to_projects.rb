class AddSubToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :sub, :string
  end
end
