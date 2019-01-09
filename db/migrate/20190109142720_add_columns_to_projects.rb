class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :featured, :boolean
    add_column :projects, :year, :string
    add_column :projects, :finish, :string
    add_column :projects, :dimensions, :string
    add_column :projects, :edition, :string
    add_column :projects, :price, :string
  end
end
