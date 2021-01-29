class AddInfoToHomepages < ActiveRecord::Migration[6.0]
  def change
    add_column :homepages, :bronze_title, :string
    add_column :homepages, :scrap_title, :string
  end
end
