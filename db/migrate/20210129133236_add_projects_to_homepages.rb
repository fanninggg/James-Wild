class AddProjectsToHomepages < ActiveRecord::Migration[6.0]
  def change
    add_reference :homepages, :project_one
    add_reference :homepages, :project_two
    add_reference :homepages, :project_three
    add_reference :homepages, :project_four


    add_foreign_key :homepages, :projects, column: :project_one_id, primary_key: :id
    add_foreign_key :homepages, :projects, column: :project_two_id, primary_key: :id
    add_foreign_key :homepages, :projects, column: :project_three_id, primary_key: :id
    add_foreign_key :homepages, :projects, column: :project_four_id, primary_key: :id
  end
end
