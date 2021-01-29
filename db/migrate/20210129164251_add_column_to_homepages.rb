class AddColumnToHomepages < ActiveRecord::Migration[6.0]
  def change
    add_column :homepages, :work_title, :string
  end
end
